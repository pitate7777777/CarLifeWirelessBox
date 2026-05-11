.class public Le/c/a/a/g0/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/a/g0/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Le/c/a/a/g0/e;


# direct methods
.method public constructor <init>(Le/c/a/a/g0/e;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/g0/e$a;->e:Le/c/a/a/g0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Le/c/a/a/g0/e$a;->e:Le/c/a/a/g0/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/a/g0/e$c;

    .line 1
    iget-object v1, v0, Le/c/a/a/g0/e;->a:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 2
    :try_start_0
    iget-object v3, p1, Le/c/a/a/g0/e$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/c/a/a/g0/e$b;

    if-eqz v3, :cond_2

    iget-object v0, v0, Le/c/a/a/g0/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v3, v2}, Le/c/a/a/g0/e$b;->a(I)V

    .line 3
    :cond_2
    :goto_0
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
