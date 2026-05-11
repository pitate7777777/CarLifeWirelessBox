.class public final Le/b/a/a/o/e/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Le/b/a/a/i;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final e:Le/b/a/a/c;

.field public final f:I

.field public final g:Z

.field public final h:Le/b/a/a/o/e/c/a/b;

.field public final i:Le/b/a/a/o/e/b/d$a;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:Ljava/util/concurrent/Semaphore;

.field public p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public q:Landroid/media/AudioTrack;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile t:I

.field public u:I

.field public v:Z

.field public w:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Le/b/a/a/c;IZLe/b/a/a/o/e/c/a/b;Le/b/a/a/o/e/b/d$a;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p4, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p5, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    iput p2, p0, Le/b/a/a/o/e/b/b;->f:I

    iput-boolean p3, p0, Le/b/a/a/o/e/b/b;->g:Z

    iput-object p4, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    iput-object p5, p0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    new-instance p3, Ljava/util/concurrent/Semaphore;

    const/4 p5, 0x1

    invoke-direct {p3, p5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p3, p0, Le/b/a/a/o/e/b/b;->o:Ljava/util/concurrent/Semaphore;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Le/b/a/a/o/e/b/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Le/b/a/a/o/e/b/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, -0x1

    iput p3, p0, Le/b/a/a/o/e/b/b;->u:I

    invoke-interface {p1, p0}, Le/b/a/a/c;->t(Le/b/a/a/i;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AudioPlayTask init "

    aput-object v3, v2, v0

    aput-object p4, v2, p5

    const-string p4, "CarLife_SDK"

    const-string p5, "tag"

    .line 1
    invoke-static {p4, p5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "args"

    invoke-static {v2, p5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p5, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v0, 0x3

    if-nez p5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p5, v0, p4, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p5, "CONFIG_SAVE_AUDIO_FILE"

    invoke-interface {p1, p5, p4}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Ljava/io/File;

    invoke-interface {p1}, Le/b/a/a/c;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string p5, "AudioPlayer"

    invoke-direct {p4, p1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance p5, Ljava/io/File;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Le/b/a/a/r/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pcm"

    invoke-static {v1, v2}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p5, p4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Le/b/a/a/o/e/b/b;->w:Ljava/io/OutputStream;

    :cond_2
    if-eq p2, v0, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    const p1, 0x50002

    iput p1, p0, Le/b/a/a/o/e/b/b;->j:I

    const p1, 0x50006

    iput p1, p0, Le/b/a/a/o/e/b/b;->k:I

    const p1, 0x50004

    iput p1, p0, Le/b/a/a/o/e/b/b;->m:I

    const p1, 0x50003

    iput p1, p0, Le/b/a/a/o/e/b/b;->n:I

    goto :goto_1

    :cond_3
    const p1, 0x40001

    iput p1, p0, Le/b/a/a/o/e/b/b;->j:I

    const p1, 0x40002

    iput p1, p0, Le/b/a/a/o/e/b/b;->m:I

    const p1, 0x40003

    iput p1, p0, Le/b/a/a/o/e/b/b;->n:I

    iput p3, p0, Le/b/a/a/o/e/b/b;->k:I

    :goto_1
    iput p3, p0, Le/b/a/a/o/e/b/b;->l:I

    goto :goto_2

    :cond_4
    const p1, 0x30001

    iput p1, p0, Le/b/a/a/o/e/b/b;->j:I

    const p1, 0x30003

    iput p1, p0, Le/b/a/a/o/e/b/b;->k:I

    const p1, 0x30004

    iput p1, p0, Le/b/a/a/o/e/b/b;->l:I

    const p1, 0x30002

    iput p1, p0, Le/b/a/a/o/e/b/b;->m:I

    const p1, 0x30006

    iput p1, p0, Le/b/a/a/o/e/b/b;->n:I

    :goto_2
    return-void
.end method


# virtual methods
.method public final b(Le/b/a/a/o/e/c/a/a;I)Landroid/media/AudioTrack;
    .locals 8

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le/b/a/a/o/e/c/a/a;->e()I

    move-result v0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p1, Le/b/a/a/o/e/c/a/a;->a:I

    .line 2
    invoke-virtual {p1}, Le/b/a/a/o/e/c/a/a;->c()I

    move-result v1

    invoke-virtual {p1}, Le/b/a/a/o/e/c/a/a;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    :goto_0
    move v6, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    new-instance v0, Landroid/media/AudioTrack;

    .line 3
    iget v3, p1, Le/b/a/a/o/e/c/a/a;->a:I

    .line 4
    invoke-virtual {p1}, Le/b/a/a/o/e/c/a/a;->c()I

    move-result v4

    invoke-virtual {p1}, Le/b/a/a/o/e/c/a/a;->b()I

    move-result v5

    const/4 v2, 0x3

    move-object v1, v0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/media/AudioTrack$Builder;

    invoke-direct {v0}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {p1}, Le/b/a/a/o/e/c/a/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 5
    iget v2, p1, Le/b/a/a/o/e/c/a/a;->a:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {p1}, Le/b/a/a/o/e/c/a/a;->c()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    const-string p1, "{\n            AudioTrack.Builder()\n                .setAudioAttributes(\n                    AudioAttributes.Builder()\n                        .setUsage(AudioAttributes.USAGE_MEDIA)\n                        .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)\n                        .build()\n                )\n                .setAudioFormat(\n                    AudioFormat.Builder()\n                        .setEncoding(params.audioFormat)\n                        .setSampleRate(params.sampleRate)\n                        .setChannelMask(params.channelConfig)\n                        .build()\n                )\n                .setTransferMode(mode)\n                .setBufferSizeInBytes(bufferSize)\n                .build()\n        }"

    invoke-static {v0, p1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public final declared-synchronized f(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setVolume(F)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(I)V
    .locals 2

    iput p1, p0, Le/b/a/a/o/e/b/b;->t:I

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    iget-object v1, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v0, v1, p1}, Le/b/a/a/o/e/b/d$a;->o(Le/b/a/a/o/e/c/a/b;I)V

    return-void
.end method

.method public final i(Le/b/a/a/o/e/c/a/a;)V
    .locals 5

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    iget v1, p0, Le/b/a/a/o/e/b/b;->f:I

    iget v2, p0, Le/b/a/a/o/e/b/b;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;

    move-result-object v1

    .line 1
    iget v2, p1, Le/b/a/a/o/e/c/a/a;->a:I

    .line 2
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;->setSampleRate(I)Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;

    move-result-object v1

    .line 3
    iget v2, p1, Le/b/a/a/o/e/c/a/a;->b:I

    .line 4
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;->setChannelConfig(I)Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;

    move-result-object v1

    .line 5
    iget p1, p1, Le/b/a/a/o/e/c/a/a;->c:I

    .line 6
    invoke-virtual {v1, p1}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;->setSampleFormat(I)Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    iget-object p1, p0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    invoke-interface {p1, v0}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    return-void
.end method

.method public final l(Le/b/a/a/o/e/c/a/a;Le/b/a/a/o/e/c/a/b;)V
    .locals 4

    new-instance v0, Le/b/a/a/o/e/c/a/c;

    invoke-virtual {p1}, Le/b/a/a/o/e/c/a/a;->e()I

    move-result v1

    invoke-direct {v0, v1}, Le/b/a/a/o/e/c/a/c;-><init>(I)V

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-interface {p2, v0, v1, v2}, Le/b/a/a/o/e/c/a/b;->r(Le/b/a/a/o/e/c/a/c;J)I

    move-result v1

    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->r()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Le/b/a/a/o/e/b/b;->i(Le/b/a/a/o/e/c/a/a;)V

    .line 1
    iget-object v0, v0, Le/b/a/a/o/e/c/a/c;->a:[B

    .line 2
    invoke-virtual {p0, v0, v3, v1}, Le/b/a/a/o/e/b/b;->o([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v3}, Le/b/a/a/o/e/b/b;->b(Le/b/a/a/o/e/c/a/a;I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;

    .line 3
    iget-object v2, v0, Le/b/a/a/o/e/c/a/c;->a:[B

    .line 4
    iget v0, v0, Le/b/a/a/o/e/c/a/c;->b:I

    .line 5
    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 6
    :goto_0
    iget-wide v0, p1, Le/b/a/a/o/e/c/a/a;->d:J

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p1, p0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le/b/a/a/o/e/b/d$a;->s(Le/b/a/a/o/e/c/a/b;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->v()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->v()V

    throw p1
.end method

.method public final o([BII)V
    .locals 5

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    iget v1, p0, Le/b/a/a/o/e/b/b;->f:I

    iget v2, p0, Le/b/a/a/o/e/b/b;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Le/b/a/a/o/h/a;->v([BII)V

    iget-object p1, p0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    invoke-interface {p1, v0}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 5

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    const/4 v2, -0x3

    if-ne p1, v2, :cond_2

    const v2, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v2}, Le/b/a/a/o/e/b/b;->f(F)V

    iget v2, p0, Le/b/a/a/o/e/b/b;->u:I

    const/16 v3, 0x63

    const/4 v4, -0x1

    if-ne v2, v3, :cond_5

    if-ne p1, v1, :cond_3

    iget v1, p0, Le/b/a/a/o/e/b/b;->t:I

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->o:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :cond_3
    if-ne p1, v4, :cond_9

    iget-object v1, p0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    iget-object v2, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    const-string v3, "request focus failed"

    invoke-interface {v1, v2, v0, v3}, Le/b/a/a/o/e/b/d$a;->i(Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->x()V

    goto :goto_2

    :cond_5
    const/4 v0, -0x2

    if-ne v2, v1, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v4, :cond_4

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->s()V

    goto :goto_2

    :cond_7
    if-ne v2, v0, :cond_9

    if-eq p1, v4, :cond_4

    if-eq p1, v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->w()V

    :cond_9
    :goto_2
    iput p1, p0, Le/b/a/a/o/e/b/b;->u:I

    return-void
.end method

.method public synthetic onConnectionAttached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->a(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->b(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/h;->c(Le/b/a/a/i;Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/b/a/a/o/e/b/b;->v:Z

    iget-object p1, p0, Le/b/a/a/o/e/b/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public synthetic onConnectionEstablished(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->e(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionReattached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->f(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public final q(Le/b/a/a/o/e/c/a/a;Le/b/a/a/o/e/c/a/b;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    new-instance v9, Le/b/a/a/o/e/c/a/c;

    const/16 v2, 0x2000

    invoke-direct {v9, v2}, Le/b/a/a/o/e/c/a/c;-><init>(I)V

    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const-string v2, "params"

    .line 1
    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v16, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v7, v1, Le/b/a/a/o/e/b/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v1, Le/b/a/a/o/e/b/b;->o:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v7, v1, Le/b/a/a/o/e/b/b;->o:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual/range {p0 .. p0}, Le/b/a/a/o/e/b/b;->r()Z

    move-result v7

    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    if-eqz v18, :cond_0

    if-nez v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Le/b/a/a/o/e/b/b;->v()V

    .line 3
    :cond_0
    iput v11, v9, Le/b/a/a/o/e/c/a/c;->b:I

    const-wide/16 v12, 0xbb8

    .line 4
    invoke-interface {v8, v9, v11, v12, v13}, Le/b/a/a/o/e/c/a/b;->p(Le/b/a/a/o/e/c/a/c;IJ)I

    move-result v7

    const/4 v12, 0x1

    if-lez v7, :cond_2

    iget-object v13, v1, Le/b/a/a/o/e/b/b;->w:Ljava/io/OutputStream;

    if-nez v13, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v14, v9, Le/b/a/a/o/e/c/a/c;->a:[B

    .line 6
    invoke-virtual {v13, v14, v11, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    :cond_2
    const/4 v13, -0x1

    if-ne v7, v13, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    move v13, v4

    :goto_2
    const/4 v4, 0x3

    if-nez v7, :cond_5

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    iget v7, v1, Le/b/a/a/o/e/b/b;->t:I

    if-ne v7, v4, :cond_4

    .line 8
    invoke-virtual {v1, v12}, Le/b/a/a/o/e/b/b;->g(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :try_start_3
    monitor-exit p0

    :goto_3
    move-wide v14, v2

    move-wide/from16 v21, v5

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_5
    if-lez v7, :cond_11

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :try_start_4
    iget v14, v1, Le/b/a/a/o/e/b/b;->t:I

    if-ne v14, v12, :cond_6

    .line 10
    invoke-virtual {v1, v4}, Le/b/a/a/o/e/b/b;->g(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    :try_start_5
    monitor-exit p0

    iget-boolean v4, v1, Le/b/a/a/o/e/b/b;->g:Z

    if-nez v4, :cond_8

    const-wide/16 v14, 0x14

    const-wide/16 v19, -0x1

    cmp-long v4, v2, v19

    if-nez v4, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    invoke-virtual {v0, v5, v6}, Le/b/a/a/o/e/c/a/a;->a(J)J

    move-result-wide v21

    add-long v21, v2, v21

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v21, v21, v23

    cmp-long v4, v21, v14

    if-lez v4, :cond_8

    sub-long v21, v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V

    .line 13
    :cond_8
    :goto_4
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v1, Le/b/a/a/o/e/b/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p1}, Le/b/a/a/o/e/b/b;->i(Le/b/a/a/o/e/c/a/a;)V

    .line 14
    :cond_9
    iget-object v4, v9, Le/b/a/a/o/e/c/a/c;->a:[B

    .line 15
    invoke-virtual {v1, v4, v11, v7}, Le/b/a/a/o/e/b/b;->o([BII)V

    goto :goto_5

    :cond_a
    iget-object v4, v1, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;

    if-nez v4, :cond_b

    invoke-virtual {v1, v0, v12}, Le/b/a/a/o/e/b/b;->b(Le/b/a/a/o/e/c/a/a;I)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    iput-object v4, v1, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;

    :cond_b
    iget-object v4, v1, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;

    if-nez v4, :cond_c

    :goto_5
    const-wide/16 v14, -0x1

    goto :goto_6

    .line 16
    :cond_c
    iget-object v14, v9, Le/b/a/a/o/e/c/a/c;->a:[B

    .line 17
    invoke-virtual {v4, v14, v11, v7}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_5

    :goto_6
    cmp-long v4, v2, v14

    if-nez v4, :cond_d

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_7

    .line 19
    :cond_d
    invoke-virtual {v0, v5, v6}, Le/b/a/a/o/e/c/a/a;->a(J)J

    move-result-wide v14

    add-long/2addr v14, v2

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sub-long v21, v21, v14

    const-wide/16 v14, 0x3e8

    cmp-long v4, v21, v14

    if-ltz v4, :cond_e

    add-long v2, v2, v21

    :cond_e
    :goto_7
    int-to-long v14, v7

    add-long/2addr v5, v14

    const-string v4, "CarLife_SDK"

    :try_start_6
    new-array v14, v12, [Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v15, "AudioPlayTask streamPlay readSize "

    .line 21
    :try_start_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v15, v7}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v11

    const-string v7, "tag"

    .line 22
    invoke-static {v4, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "args"

    invoke-static {v14, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v7, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v7, :cond_f

    goto/16 :goto_3

    .line 24
    :cond_f
    invoke-static {v14, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const/4 v14, 0x2

    invoke-virtual {v7, v14, v4, v12}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 25
    :goto_8
    invoke-interface/range {p2 .. p2}, Le/b/a/a/o/e/c/a/b;->g()J

    move-result-wide v23

    sub-long v2, v23, v16

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_10

    iget-object v2, v1, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    .line 26
    iget-wide v6, v0, Le/b/a/a/o/e/c/a/a;->d:J

    move-object/from16 v3, p2

    move-wide/from16 v4, v23

    .line 27
    invoke-interface/range {v2 .. v7}, Le/b/a/a/o/e/b/d$a;->f(Le/b/a/a/o/e/c/a/b;JJ)V

    move-wide/from16 v16, v23

    :cond_10
    move v4, v13

    move-wide v2, v14

    move-wide/from16 v5, v21

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    const-wide/16 v9, -0x1

    cmp-long v4, v2, v9

    if-nez v4, :cond_12

    goto :goto_9

    .line 28
    :cond_12
    invoke-virtual {v0, v5, v6}, Le/b/a/a/o/e/c/a/a;->a(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_13

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_13
    :goto_9
    move v4, v13

    goto :goto_c

    :goto_a
    move v4, v13

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    .line 30
    :goto_b
    :try_start_8
    invoke-interface/range {p2 .. p2}, Le/b/a/a/o/e/c/a/b;->isClosed()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_15

    :cond_14
    :goto_c
    iget-object v0, v1, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    invoke-interface {v0, v8, v4}, Le/b/a/a/o/e/b/d$a;->s(Le/b/a/a/o/e/c/a/b;Z)V

    invoke-virtual/range {p0 .. p0}, Le/b/a/a/o/e/b/b;->v()V

    return-void

    :cond_15
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_d
    move v13, v4

    :goto_e
    iget-object v2, v1, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    invoke-interface {v2, v8, v13}, Le/b/a/a/o/e/b/d$a;->s(Le/b/a/a/o/e/c/a/b;Z)V

    invoke-virtual/range {p0 .. p0}, Le/b/a/a/o/e/b/b;->v()V

    throw v0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/o/e/b/b;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    invoke-interface {v0}, Le/b/a/a/o/e/b/d$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 9

    const-string v0, "CarLife_SDK"

    iget-object v1, p0, Le/b/a/a/o/e/b/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v3}, Le/b/a/a/o/e/c/a/b;->e()Le/b/a/a/o/e/c/a/a;

    move-result-object v3

    .line 1
    iget-wide v4, v3, Le/b/a/a/o/e/c/a/a;->d:J

    const-wide/16 v6, 0x1

    cmp-long v8, v6, v4

    if-gtz v8, :cond_1

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 2
    iget-object v4, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-virtual {p0, v3, v4}, Le/b/a/a/o/e/b/b;->l(Le/b/a/a/o/e/c/a/a;Le/b/a/a/o/e/c/a/b;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-virtual {p0, v3, v4}, Le/b/a/a/o/e/b/b;->q(Le/b/a/a/o/e/c/a/a;Le/b/a/a/o/e/c/a/b;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    iget v3, p0, Le/b/a/a/o/e/b/b;->t:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const-string v1, "AudioPlayTask paused by player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioPlayTask play exception: "

    invoke-static {v4, v3}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    iget-object v3, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Le/b/a/a/o/e/b/d$a;->i(Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string v1, "AudioPlayTask interrupted by player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->i:Le/b/a/a/o/e/b/d$a;

    iget-object v1, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v0, v1, v2}, Le/b/a/a/o/e/b/d$a;->s(Le/b/a/a/o/e/c/a/b;Z)V

    :goto_1
    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget v0, p0, Le/b/a/a/o/e/b/b;->m:I

    if-lez v0, :cond_4

    iget-object v1, p0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    iget v2, p0, Le/b/a/a/o/e/b/b;->f:I

    invoke-interface {v1, v2, v0}, Le/b/a/a/c;->g1(II)V

    .line 4
    :cond_4
    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->x()V

    return-void
.end method

.method public final declared-synchronized s()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Le/b/a/a/o/e/b/b;->t:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Le/b/a/a/o/e/b/b;->t:I

    if-ne v0, v2, :cond_4

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Le/b/a/a/o/e/b/b;->g(I)V

    iget v0, p0, Le/b/a/a/o/e/b/b;->u:I

    const/16 v1, 0x63

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :goto_0
    iget-object v0, p0, Le/b/a/a/o/e/b/b;->o:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1
    iget v0, p0, Le/b/a/a/o/e/b/b;->k:I

    if-lez v0, :cond_2

    iget-object v1, p0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    iget v3, p0, Le/b/a/a/o/e/b/b;->f:I

    invoke-interface {v1, v3, v0}, Le/b/a/a/c;->g1(II)V

    .line 2
    :cond_2
    iput-boolean v2, p0, Le/b/a/a/o/e/b/b;->v:Z

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Le/b/a/a/o/e/b/b;->f(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized v()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Le/b/a/a/o/e/b/b;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/b/a/a/o/e/b/b;->g(I)V

    iget v0, p0, Le/b/a/a/o/e/b/b;->u:I

    const/16 v1, 0x63

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->q:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :goto_0
    iget-object v0, p0, Le/b/a/a/o/e/b/b;->o:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p0}, Le/b/a/a/o/e/b/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le/b/a/a/o/e/b/b;->v:Z

    if-eqz v0, :cond_1

    .line 1
    iget v0, p0, Le/b/a/a/o/e/b/b;->l:I

    if-lez v0, :cond_1

    iget-object v1, p0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    iget v2, p0, Le/b/a/a/o/e/b/b;->f:I

    invoke-interface {v1, v2, v0}, Le/b/a/a/c;->g1(II)V

    :cond_1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/b/a/a/o/e/b/b;->v:Z

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Le/b/a/a/o/e/b/b;->f(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Le/b/a/a/o/e/b/b;->g(I)V

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->p:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_0
    iget-object v0, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->w:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :goto_1
    iget-object v0, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    invoke-interface {v0}, Le/b/a/a/o/e/c/a/b;->f()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    invoke-interface {v0, p0}, Le/b/a/a/c;->b0(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :cond_2
    iget-object v0, p0, Le/b/a/a/o/e/b/b;->e:Le/b/a/a/c;

    invoke-interface {v0, p0}, Le/b/a/a/c;->D(Le/b/a/a/i;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AudioPlayTask stop "

    aput-object v3, v0, v2

    iget-object v2, p0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method
