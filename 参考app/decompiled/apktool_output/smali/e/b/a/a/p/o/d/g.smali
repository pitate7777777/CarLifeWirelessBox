.class public final Le/b/a/a/p/o/d/g;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Lf/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/p/o/d/e;

.field public final synthetic f:Le/b/a/a/o/i/f/a;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/d/e;Le/b/a/a/o/i/f/a;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/o/d/g;->e:Le/b/a/a/p/o/d/e;

    iput-object p2, p0, Le/b/a/a/p/o/d/g;->f:Le/b/a/a/o/i/f/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Le/b/a/a/p/o/d/g;->e:Le/b/a/a/p/o/d/e;

    iget-object v1, p0, Le/b/a/a/p/o/d/g;->f:Le/b/a/a/o/i/f/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const-string v3, "communicator"

    .line 2
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Le/b/a/a/p/o/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    const-string v5, "CarLife_SDK"

    const-string v6, "args"

    const-string v7, "tag"

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "InstantConnectionSetup multiple bluetooth socket!!!"

    aput-object v1, v0, v8

    .line 3
    invoke-static {v5, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v5, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 6
    :cond_1
    iget-object v3, v0, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, "CONFIG_BLUETOOTH_AUDIO"

    invoke-interface {v3, v10, v9}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Le/b/a/a/p/o/d/e;->g:Z

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v10, "supportBtAudio: "

    invoke-static {v10, v3}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v8

    const-string v3, "Bluetooth_CarLife_SDK"

    .line 7
    invoke-static {v3, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v10, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v11, 0x3

    if-nez v10, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v9, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v11, v3, v9}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_0
    iget-boolean v9, v0, Le/b/a/a/p/o/d/e;->g:Z

    if-eqz v9, :cond_4

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "sendBtAudioInfo: MSG_WIRELESS_BT_AUDIO_INFO"

    aput-object v10, v9, v8

    .line 11
    invoke-static {v3, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v6, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v6, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v9, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v11, v3, v7}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :goto_1
    sget-object v3, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v6, 0x108010

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v3, v4, v6, v8, v7}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v3

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo$Builder;->setSupportBtAudio(I)Lcom/baidu/carlife/protobuf/CarlifeBTAudioInfoProto$CarlifeBTAudioInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-virtual {v1, v3}, Le/b/a/a/o/i/f/a;->a(Le/b/a/a/o/h/a;)V

    .line 15
    :cond_4
    iput-object v1, v0, Le/b/a/a/p/o/d/e;->f:Le/b/a/a/o/i/f/a;

    :goto_2
    :try_start_0
    invoke-virtual {v1}, Le/b/a/a/o/i/f/a;->b()Le/b/a/a/o/h/a;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, v1, v3}, Le/b/a/a/p/o/d/e;->a(Le/b/a/a/o/i/f/a;Le/b/a/a/o/h/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Le/b/a/a/o/h/a;->w()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v3, v2

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Le/b/a/a/p/o/d/e;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "InstantConnectionSetup process exception: "

    :try_start_3
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Le/b/a/a/o/h/a;->w()V

    :goto_4
    iget-object v1, v0, Le/b/a/a/p/o/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v2, v0, Le/b/a/a/p/o/d/e;->f:Le/b/a/a/o/i/f/a;

    .line 16
    :goto_5
    sget-object v0, Lf/h;->a:Lf/h;

    return-object v0

    :goto_6
    if-nez v2, :cond_6

    goto :goto_7

    .line 17
    :cond_6
    invoke-virtual {v2}, Le/b/a/a/o/h/a;->w()V

    :goto_7
    throw v0

    :cond_7
    throw v2
.end method
