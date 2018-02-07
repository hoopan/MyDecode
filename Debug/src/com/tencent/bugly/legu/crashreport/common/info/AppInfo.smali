.class public Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    const-string v0, "@buglyAllChannel@"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    const-string v0, "@buglyAllChannelPriority@"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 134
    const/4 v2, 0x0

    .line 136
    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1c} :catch_3b
    .catchall {:try_start_2 .. :try_end_1c} :catchall_52

    .line 137
    const/16 v2, 0x200

    :try_start_1e
    new-array v2, v2, [C

    .line 138
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    .line 139
    :goto_23
    array-length v3, v2

    if-ge v0, v3, :cond_2d

    .line 141
    aget-char v3, v2, v0

    if-eqz v3, :cond_2d

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 145
    :cond_2d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    .line 146
    const/4 v2, 0x0

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_36} :catch_60
    .catchall {:try_start_1e .. :try_end_36} :catchall_5e

    move-result-object v0

    .line 155
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_5a

    .line 160
    :cond_3a
    :goto_3a
    return-object v0

    .line 148
    :catch_3b
    move-exception v0

    move-object v1, v2

    .line 149
    :goto_3d
    :try_start_3d
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    :cond_46
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_5e

    move-result-object v0

    .line 155
    if-eqz v1, :cond_3a

    .line 156
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_3a

    :catch_50
    move-exception v1

    goto :goto_3a

    .line 154
    :catchall_52
    move-exception v0

    move-object v1, v2

    .line 155
    :goto_54
    if-eqz v1, :cond_59

    .line 156
    :try_start_56
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5c

    .line 160
    :cond_59
    :goto_59
    throw v0

    :catch_5a
    move-exception v1

    goto :goto_3a

    :catch_5c
    move-exception v1

    goto :goto_59

    .line 154
    :catchall_5e
    move-exception v0

    goto :goto_54

    .line 148
    :catch_60
    move-exception v0

    goto :goto_3d
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    .line 53
    :goto_3
    return-object v0

    .line 47
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    .line 48
    :catch_9
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :cond_13
    const-string v0, "fail"

    goto :goto_3
.end method

.method public static a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    .line 83
    :goto_3
    return-object v0

    .line 78
    :cond_4
    :try_start_4
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_6} :catch_7

    goto :goto_3

    .line 79
    :catch_7
    move-exception v0

    .line 80
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    :cond_11
    const-string v0, "fail"

    goto :goto_3
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    if-nez p0, :cond_5

    move-object v0, v1

    .line 245
    :goto_4
    return-object v0

    .line 232
    :cond_5
    :try_start_5
    const-string v0, "BUGLY_DISABLE"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    move-object v0, v1

    .line 234
    goto :goto_4

    .line 236
    :cond_17
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 237
    const/4 v0, 0x0

    :goto_1e
    array-length v3, v2

    if-ge v0, v3, :cond_2c

    .line 238
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 240
    :cond_2c
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2f} :catch_31

    move-result-object v0

    goto :goto_4

    .line 241
    :catch_31
    move-exception v0

    .line 242
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 243
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3b
    move-object v0, v1

    .line 245
    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 108
    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_10

    .line 130
    :cond_f
    :goto_f
    return v0

    .line 112
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 115
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 116
    if-eqz v2, :cond_f

    .line 117
    array-length v3, v2

    move v1, v0

    :goto_24
    if-ge v1, v3, :cond_f

    aget-object v4, v2, v1

    .line 118
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2b} :catch_33

    move-result v4

    if-eqz v4, :cond_30

    .line 119
    const/4 v0, 0x1

    goto :goto_f

    .line 117
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 123
    :catch_33
    move-exception v1

    .line 124
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 125
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 4

    .prologue
    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 65
    :goto_d
    return-object v0

    .line 61
    :catch_e
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    .line 100
    :goto_3
    return-object v0

    .line 95
    :cond_4
    :try_start_4
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    goto :goto_3

    .line 96
    :catch_b
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    :cond_15
    const-string v0, "fail"

    goto :goto_3
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 172
    :goto_8
    return-object v0

    .line 169
    :catch_9
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static d(Landroid/content/Context;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 176
    if-nez p0, :cond_4

    .line 223
    :cond_3
    :goto_3
    return-object v1

    .line 181
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 185
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_9c

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "BUGLY_DISABLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 189
    if-eqz v3, :cond_2e

    .line 190
    const-string v4, "BUGLY_DISABLE"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_2e
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "BUGLY_APPID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 194
    if-eqz v3, :cond_41

    .line 195
    const-string v4, "BUGLY_APPID"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_41
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "BUGLY_APP_CHANNEL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 199
    if-eqz v3, :cond_54

    .line 200
    const-string v4, "BUGLY_APP_CHANNEL"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_54
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "BUGLY_APP_VERSION"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_67

    .line 205
    const-string v4, "BUGLY_APP_VERSION"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_67
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "BUGLY_ENABLE_DEBUG"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_7a

    .line 210
    const-string v4, "BUGLY_ENABLE_DEBUG"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_7a
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.tencent.rdm.uuid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_8d

    .line 215
    const-string v3, "com.tencent.rdm.uuid"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_8d} :catch_90

    :cond_8d
    :goto_8d
    move-object v1, v0

    .line 218
    goto/16 :goto_3

    .line 219
    :catch_90
    move-exception v0

    .line 220
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 221
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_9c
    move-object v0, v1

    goto :goto_8d
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 250
    if-nez p0, :cond_5

    move v0, v1

    .line 269
    :goto_4
    return v0

    .line 253
    :cond_5
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a:Landroid/app/ActivityManager;

    if-nez v0, :cond_13

    .line 254
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a:Landroid/app/ActivityManager;

    .line 257
    :cond_13
    :try_start_13
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 258
    sget-object v2, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a:Landroid/app/ActivityManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 259
    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v0, :cond_2b

    .line 260
    const-string v0, "Memory is low."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_29} :catch_2d

    .line 261
    const/4 v0, 0x1

    goto :goto_4

    :cond_2b
    move v0, v1

    .line 263
    goto :goto_4

    .line 265
    :catch_2d
    move-exception v0

    .line 266
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 267
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_37
    move v0, v1

    .line 269
    goto :goto_4
.end method
