.class public final Le/b/b/n/d/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Le/b/b/n/d/f;

.field public static b:Le/b/b/n/d/b;

.field public static c:Le/b/a/a/c;

.field public static final d:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Le/b/b/n/d/a;->e:Le/b/b/n/d/a;

    sput-object v0, Le/b/b/n/d/f;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public static final a()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "-----MSG_CMD_MIC_RECORD_END-----"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLifeVoice"

    const-string v3, "tag"

    .line 1
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object v0, Le/b/b/n/d/f;->b:Le/b/b/n/d/b;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Le/b/b/n/d/b;->a(Z)V

    :goto_1
    return-void
.end method

.method public static final b()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "-----MSG_CMD_MIC_RECORD_RECOG_START-----"

    aput-object v3, v1, v2

    const-string v3, "CarLifeVoice"

    const-string v4, "tag"

    .line 1
    invoke-static {v3, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v1, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object v1, Le/b/b/n/d/f;->b:Le/b/b/n/d/b;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Le/b/b/n/d/b;

    sget-object v3, Le/b/b/n/d/f;->c:Le/b/a/a/c;

    invoke-direct {v1, v3}, Le/b/b/n/d/b;-><init>(Le/b/a/a/c;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sput-object v1, Le/b/b/n/d/f;->b:Le/b/b/n/d/b;

    :cond_2
    sget-object v1, Le/b/b/n/d/f;->b:Le/b/b/n/d/b;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Le/b/b/n/d/b;->a(Z)V

    .line 5
    iget-object v0, v1, Le/b/b/n/d/b;->h:Le/b/b/n/d/c;

    if-nez v0, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    iput-boolean v2, v0, Le/b/b/n/d/c;->i:Z

    :goto_1
    return-void
.end method

.method public static final c()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "-----MSG_CMD_MIC_RECORD_WAKEUP_START-----"

    aput-object v3, v1, v2

    const-string v3, "CarLifeVoice"

    const-string v4, "tag"

    .line 1
    invoke-static {v3, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v1, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object v1, Le/b/b/n/d/f;->b:Le/b/b/n/d/b;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Le/b/b/n/d/b;

    sget-object v3, Le/b/b/n/d/f;->c:Le/b/a/a/c;

    invoke-direct {v1, v3}, Le/b/b/n/d/b;-><init>(Le/b/a/a/c;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sput-object v1, Le/b/b/n/d/f;->b:Le/b/b/n/d/b;

    :cond_2
    sget-object v1, Le/b/b/n/d/f;->b:Le/b/b/n/d/b;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Le/b/b/n/d/b;->a(Z)V

    .line 5
    iget-object v0, v1, Le/b/b/n/d/b;->h:Le/b/b/n/d/c;

    if-nez v0, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    iput-boolean v2, v0, Le/b/b/n/d/c;->i:Z

    :goto_1
    return-void
.end method

.method public static final d(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "VR audio focus change to "

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "VoiceRecordUtil"

    const-string v1, "tag"

    .line 1
    invoke-static {p0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
