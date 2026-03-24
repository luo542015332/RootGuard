// 脚本路径（KSU模块目录绝对路径，避免相对路径错误）
const MODULE_ID = "bszip";
const SCRIPT_PATHS = {
    btn1: `/data/adb/modules/${MODULE_ID}/scripts/script1.sh`,
    btn2: `/data/adb/modules/${MODULE_ID}/scripts/script2.sh`,
    btn3: `/data/adb/modules/${MODULE_ID}/scripts/script3.sh`,
    btn4: `/data/adb/modules/${MODULE_ID}/scripts/script4.sh`
};

// 页面加载完成后绑定按钮事件
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('resultBox').innerHTML = "就绪";
    
    document.getElementById('btn1').addEventListener('click', () => executeScript('btn1'));
    document.getElementById('btn2').addEventListener('click', () => executeScript('btn2'));
    document.getElementById('btn3').addEventListener('click', () => executeScript('btn3'));
    document.getElementById('btn4').addEventListener('click', () => executeScript('btn4'));
});

/**
 * 执行KSU命令
 */
function execKsuCommand(command) {
    return new Promise((resolve, reject) => {
        const callbackName = `exec_callback_${Date.now()}`;
        
        window[callbackName] = (errno, stdout, stderr) => {
            delete window[callbackName];
            resolve({
                code: errno,
                stdout: stdout || "",
                stderr: stderr || ""
            });
        };

        if (typeof ksu !== 'undefined' && ksu.exec) {
            ksu.exec(command, "{}", callbackName);
        } else {
            reject({ code: -1, stdout: "", stderr: "KSU API未找到" });
        }
    });
}

/**
 * 执行指定的sh脚本（精简输出）
 */
async function executeScript(btnId) {
    const scriptPath = SCRIPT_PATHS[btnId];
    const resultBox = document.getElementById('resultBox');

    // 简洁执行命令
    const execCmd = `sh "${scriptPath}" 2>&1`;

    try {
        const data = await execKsuCommand(execCmd);
        // 只输出脚本的stdout内容
        resultBox.innerHTML = data.stdout || "无输出";
    } catch (err) {
        resultBox.innerHTML = err.stderr || "执行失败";
    }
}

/**
 * 清空结果
 */
function clearResult() {
    document.getElementById('resultBox').innerHTML = "";
}