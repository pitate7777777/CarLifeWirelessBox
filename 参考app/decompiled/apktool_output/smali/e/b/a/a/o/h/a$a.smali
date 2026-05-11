.class public final Le/b/a/a/o/h/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/o/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lf/m/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Le/b/a/a/o/h/a$a;->a(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;
    .locals 4

    .line 1
    sget-object v0, Le/b/a/a/o/h/a;->m:Le/b/a/a/o/h/c;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Le/b/a/a/o/h/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/o/h/a;

    if-nez v1, :cond_0

    new-instance v1, Le/b/a/a/o/h/a;

    invoke-direct {v1, p1}, Le/b/a/a/o/h/a;-><init>(I)V

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, p1, p3, v2}, Le/b/a/a/o/h/a;->x(II[B)V

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    iget p2, v1, Le/b/a/a/o/h/a;->e:I

    const/4 p3, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v3, 0x6

    if-eq p2, v3, :cond_1

    iget-object p2, v1, Le/b/a/a/o/h/a;->i:[B

    const/16 v3, 0x8

    invoke-static {p1, p2, v3, p3, v2}, Ld/b/k/m$i;->N(I[BIII)V

    goto :goto_0

    :cond_1
    iget-object p2, v1, Le/b/a/a/o/h/a;->i:[B

    invoke-static {p1, p2, v2, p3, v2}, Ld/b/k/m$i;->N(I[BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    :goto_0
    monitor-exit v0

    .line 7
    iget-object p1, v1, Le/b/a/a/o/h/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object v1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1
.end method
