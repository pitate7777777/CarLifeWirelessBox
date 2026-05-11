.class public final Le/b/a/a/q/i;
.super Landroid/os/RemoteCallbackList;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        "Wrapper:",
        "Le/b/a/a/q/c<",
        "TT;>;>",
        "Landroid/os/RemoteCallbackList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/m/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/b<",
            "TT;TWrapper;>;"
        }
    .end annotation
.end field

.field public final b:Lf/m/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/b<",
            "TWrapper;",
            "Lf/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "TWrapper;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/m/a/b;Lf/m/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/m/a/b<",
            "-TT;+TWrapper;>;",
            "Lf/m/a/b<",
            "-TWrapper;",
            "Lf/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDied"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Le/b/a/a/q/i;->a:Lf/m/a/b;

    iput-object p2, p0, Le/b/a/a/q/i;->b:Lf/m/a/b;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/b/a/a/q/i;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IInterface;)Le/b/a/a/q/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TWrapper;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object v0, p0, Le/b/a/a/q/i;->a:Lf/m/a/b;

    invoke-interface {v0, p1}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/q/c;

    iget-object v1, p0, Le/b/a/a/q/i;->c:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v2, "listener.asBinder()"

    invoke-static {p1, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Landroid/os/IInterface;)Le/b/a/a/q/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TWrapper;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object v0, p0, Le/b/a/a/q/i;->c:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/b/a/a/q/c;

    return-object p1
.end method

.method public onCallbackDied(Landroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/q/i;->c:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/b/a/a/q/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/q/i;->b:Lf/m/a/b;

    invoke-interface {v0, p1}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
