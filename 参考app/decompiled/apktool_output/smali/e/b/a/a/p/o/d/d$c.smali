.class public final Le/b/a/a/p/o/d/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/o/d/d;-><init>(Le/b/a/a/c;Le/b/a/a/p/o/d/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/p/o/d/d;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/d/d;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/o/d/d$c;->e:Le/b/a/a/p/o/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Le/b/a/a/p/o/d/d;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/b/a/a/p/o/d/d;->b(Le/b/a/a/p/o/d/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Le/b/a/a/p/o/d/d$c;->e:Le/b/a/a/p/o/d/d;

    .line 1
    iget-object v0, v0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    .line 2
    invoke-interface {v0}, Le/b/a/a/c;->Z0()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Le/b/a/a/p/o/d/d$c;->e:Le/b/a/a/p/o/d/d;

    .line 3
    iget-boolean v1, v0, Le/b/a/a/p/o/d/d;->j:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    .line 5
    invoke-interface {v0}, Le/b/a/a/c;->B0()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/p/o/d/d$c;->e:Le/b/a/a/p/o/d/d;

    new-instance v2, Le/b/a/a/p/o/d/a;

    invoke-direct {v2, v1}, Le/b/a/a/p/o/d/a;-><init>(Le/b/a/a/p/o/d/d;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
