.class public Landroid/support/v4/media/session/MediaSessionCompat$a$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$b;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$a;->e:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-interface {v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->c()Landroid/support/v4/media/session/MediaSessionCompat$a;

    move-result-object v3

    if-ne v0, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ld/o/a;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->h(Ld/o/a;)V

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->h(Ld/o/a;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method
