.class Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;
.super Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;
.source "SoftwareKeyboardControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 101
    invoke-direct {p0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;-><init>()V

    .line 102
    iput-object p1, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 103
    return-void
.end method

.method static synthetic lambda$show$0(Landroid/view/View;)V
    .registers 3
    .param p0, "finalView"    # Landroid/view/View;

    .line 131
    nop

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 134
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 136
    return-void
.end method


# virtual methods
.method hide()V
    .registers 4

    .line 142
    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 148
    :cond_1b
    return-void
.end method

.method show()V
    .registers 4

    .line 108
    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 110
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_5

    .line 111
    return-void

    .line 114
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_1b

    .line 120
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_1e

    .line 118
    :cond_1b
    :goto_1b
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 124
    :goto_1e
    if-nez v0, :cond_2d

    .line 125
    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    :cond_2d
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 129
    move-object v1, v0

    .line 130
    .local v1, "finalView":Landroid/view/View;
    new-instance v2, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 138
    .end local v1    # "finalView":Landroid/view/View;
    :cond_3e
    return-void
.end method
