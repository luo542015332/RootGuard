package com.rootguard.app.di

import android.content.Context
import com.rootguard.app.data.local.IsolationDataStore
import com.rootguard.app.data.local.SettingsDataStore
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.data.magisk.MagiskProvider
import com.rootguard.app.data.repository.MagiskRepository
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
    fun provideJson(): Json = Json { ignoreUnknownKeys = true }

    @Provides
    @Singleton
    fun provideMagiskProvider(@ApplicationContext context: Context): MagiskProvider = MagiskProvider(context)

    @Provides
    @Singleton
    fun provideMagiskRepository(magiskProvider: MagiskProvider): MagiskRepository = MagiskRepository(magiskProvider)

    @Provides
    @Singleton
    fun provideSettingsDataStore(@ApplicationContext context: Context): SettingsDataStore = SettingsDataStore(context)
}
