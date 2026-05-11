.class public final Lg/a/g0;
.super Lg/a/k0;
.source ""


# static fields
.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public volatile synthetic _invoked:I

.field public final i:Lf/m/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/b<",
            "Ljava/lang/Throwable;",
            "Lf/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/a/g0;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/g0;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lf/m/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/m/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lf/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lg/a/k0;-><init>()V

    iput-object p1, p0, Lg/a/g0;->i:Lf/m/a/b;

    const/4 p1, 0x0

    iput p1, p0, Lg/a/g0;->_invoked:I

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lg/a/g0;->l(Ljava/lang/Throwable;)V

    sget-object p1, Lf/h;->a:Lf/h;

    return-object p1
.end method

.method public l(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lg/a/g0;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/g0;->i:Lf/m/a/b;

    invoke-interface {v0, p1}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
