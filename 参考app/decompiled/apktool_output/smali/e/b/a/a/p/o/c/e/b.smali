.class public final Le/b/a/a/p/o/c/e/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/b/a/a/p/o/c/e/d;

.field public final b:Ljava/util/concurrent/Semaphore;

.field public volatile c:I

.field public volatile d:Le/b/a/a/o/h/a;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/c/e/d;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/c/e/b;->a:Le/b/a/a/p/o/c/e/d;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Le/b/a/a/p/o/c/e/b;->b:Ljava/util/concurrent/Semaphore;

    const/4 p1, 0x2

    iput p1, p0, Le/b/a/a/p/o/c/e/b;->c:I

    return-void
.end method
