package com.rootguard.app.di

import android.content.Context
import com.rootguard.app.data.local.SettingsDataStore
import com.rootguard.app.data.magisk.MagiskProvider
import com.rootguard.app.data.repository.MagiskRepository
import com.rootguard.app.data.repository.RebootRepository
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import kotlinx.serialization.json.Json
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object AppModule {

    @Provides
    @Singleton
    fun provideJson(): Json {
        return Json { ignoreUnknownKeys = true }
    }

    @Provides
    @Singleton
    fun provideMagiskProvider(
        @ApplicationContext context: Context
    ): MagiskProvider {
        return MagiskProvider(context)
    }

    @Provides
    @Singleton
    fun provideMagiskRepository(
        magiskProvider: MagiskProvider
    ): MagiskRepository {
        return MagiskRepository(magiskProvider)
    }

    @Provides
    @Singleton
    fun provideSettingsDataStore(
        @ApplicationContext context: Context
    ): SettingsDataStore {
        return SettingsDataStore(context)
    }

    @Provides
    @Singleton
    fun provideRebootRepository(
        @ApplicationContext context: Context
    ): RebootRepository {
        return RebootRepository(context)
    }
}