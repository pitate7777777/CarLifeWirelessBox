.class public Le/b/b/s/a;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final synthetic e:Le/b/b/s/b;


# direct methods
.method public constructor <init>(Le/b/b/s/b;)V
    .locals 0

    iput-object p1, p0, Le/b/b/s/a;->e:Le/b/b/s/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "begin to read bdcf"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CarlifeConfUtil"

    invoke-static {v2, v1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    sput-boolean v3, Le/b/b/s/b;->e:Z

    .line 2
    iget-object v1, p0, Le/b/b/s/a;->e:Le/b/b/s/b;

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    const/4 v5, 0x2

    .line 3
    :try_start_0
    sget-object v6, Lcom/baidu/carlifevehicle/VehicleApplication;->f:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "bdcf"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Le/b/b/s/b;->d:Ljava/util/HashMap;

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "#"

    const-string v9, ": "

    const-string v10, "line "

    if-eqz v6, :cond_1

    :try_start_2
    new-array v11, v0, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v2, v11}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Le/b/b/s/b;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    new-array v11, v0, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v2, v11}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "="

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v11, v1, Le/b/b/s/b;->d:Ljava/util/HashMap;

    aget-object v12, v6, v3

    aget-object v6, v6, v0

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v1, 0x0

    goto :goto_6

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_1
    move-exception v1

    move-object v4, v7

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, v7

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v1

    :goto_1
    :try_start_4
    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "[ERROR]read file exception"

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    const/4 v4, 0x2

    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v4

    goto :goto_6

    :cond_3
    :goto_3
    const/4 v1, 0x2

    goto :goto_6

    :catch_5
    move-exception v1

    :goto_4
    :try_start_6
    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "[ERROR]read to file exception 1"

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-nez v1, :cond_5

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "read conf form bdcf success"

    aput-object v4, v1, v3

    .line 4
    invoke-static {v2, v1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_5
    if-ne v1, v0, :cond_6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "read conf form bdcf fail: file not exist"

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    sput-boolean v3, Le/b/b/s/b;->e:Z

    return-void

    :cond_6
    if-ne v1, v5, :cond_7

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "read conf form bdcf fail: get exception"

    aput-object v1, v0, v3

    .line 6
    invoke-static {v2, v0}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sput-boolean v3, Le/b/b/s/b;->e:Z

    return-void

    .line 8
    :cond_7
    :goto_7
    iget-object v1, p0, Le/b/b/s/a;->e:Le/b/b/s/b;

    .line 9
    iget-object v1, v1, Le/b/b/s/b;->c:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "read channel id form bdcf: "

    invoke-static {v4}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Le/b/b/s/a;->e:Le/b/b/s/b;

    .line 11
    iget-object v5, v5, Le/b/b/s/b;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Le/b/b/s/a;->e:Le/b/b/s/b;

    .line 13
    iget-object v1, v1, Le/b/b/s/b;->c:Ljava/lang/String;

    .line 14
    sput-object v1, Le/b/b/s/d;->a:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "channel = "

    invoke-static {v4}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Le/b/b/s/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Le/b/b/s/a;->e:Le/b/b/s/b;

    invoke-static {v1}, Le/b/b/s/b;->a(Le/b/b/s/b;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "update property success"

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    sput-boolean v0, Le/b/b/s/b;->e:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "end to read bdcf"

    aput-object v1, v0, v3

    .line 16
    invoke-static {v2, v0}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "update property fail"

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sput-boolean v3, Le/b/b/s/b;->e:Z

    return-void

    :cond_9
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "read channel id form bdcf fail"

    aput-object v1, v0, v3

    .line 18
    invoke-static {v2, v0}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    sput-boolean v3, Le/b/b/s/b;->e:Z

    return-void

    :goto_8
    move-object v7, v4

    :goto_9
    if-eqz v7, :cond_a

    .line 20
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_a

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    throw v0

    :cond_b
    throw v4
.end method
