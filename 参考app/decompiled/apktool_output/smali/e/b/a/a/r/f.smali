.class public final Le/b/a/a/r/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lf/m/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/a<",
            "Lf/h;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;JLf/m/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "J",
            "Lf/m/a/a<",
            "Lf/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "looper"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    invoke-static {p4, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Le/b/a/a/r/f;->a:Lf/m/a/a;

    const-wide/16 v0, 0x64

    div-long/2addr p2, v0

    iput-wide p2, p0, Le/b/a/a/r/f;->b:J

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p3, 0x0

    invoke-direct {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Le/b/a/a/r/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Landroid/os/Handler;

    new-instance p3, Le/b/a/a/r/a;

    invoke-direct {p3, p0}, Le/b/a/a/r/a;-><init>(Le/b/a/a/r/f;)V

    invoke-direct {p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Le/b/a/a/r/f;->f:Landroid/os/Handler;

    return-void
.end method

.method public static final a(Le/b/a/a/r/f;Landroid/os/Message;)Z
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Le/b/a/a/r/f;->c:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Le/b/a/a/r/f;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/b/a/a/r/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iget-wide v3, p0, Le/b/a/a/r/f;->b:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 1
    iput-boolean v0, p0, Le/b/a/a/r/f;->d:Z

    iget-object p1, p0, Le/b/a/a/r/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2
    iget-object p1, p0, Le/b/a/a/r/f;->a:Lf/m/a/a;

    invoke-interface {p1}, Lf/m/a/a;->a()Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object p0, p0, Le/b/a/a/r/f;->f:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
