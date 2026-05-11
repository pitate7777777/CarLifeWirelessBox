.class public final Le/b/a/a/o/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/o/h/a$a;
    }
.end annotation


# static fields
.field public static final l:Le/b/a/a/o/h/a$a;

.field public static final m:Le/b/a/a/o/h/c;

.field public static final n:Le/b/a/a/o/h/a;


# instance fields
.field public e:I

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:[B

.field public final h:Ljava/nio/ByteBuffer;

.field public i:[B

.field public j:Ljava/nio/ByteBuffer;

.field public k:Le/c/b/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/b/a/a/o/h/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/b/a/a/o/h/a$a;-><init>(Lf/m/b/b;)V

    sput-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    new-instance v0, Le/b/a/a/o/h/c;

    invoke-direct {v0}, Le/b/a/a/o/h/c;-><init>()V

    sput-object v0, Le/b/a/a/o/h/a;->m:Le/b/a/a/o/h/c;

    new-instance v0, Le/b/a/a/o/h/a;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Le/b/a/a/o/h/a;-><init>(I)V

    .line 2
    sput-object v0, Le/b/a/a/o/h/a;->n:Le/b/a/a/o/h/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/b/a/a/o/h/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/b/a/a/o/h/a;->e:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Le/b/a/a/o/h/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Le/b/a/a/o/h/a;->g:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/o/h/a;->h:Ljava/nio/ByteBuffer;

    const/16 p1, 0x800

    new-array p1, p1, [B

    iput-object p1, p0, Le/b/a/a/o/h/a;->i:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static synthetic s(Le/b/a/a/o/h/a;ZI)[B
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Le/b/a/a/o/h/a;->q(Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static final t(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;
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

    invoke-direct {v1, p0}, Le/b/a/a/o/h/a;-><init>(I)V

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, p0, p2, v2}, Le/b/a/a/o/h/a;->x(II[B)V

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 5
    iget p1, v1, Le/b/a/a/o/h/a;->e:I

    const/4 p2, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    iget-object p1, v1, Le/b/a/a/o/h/a;->i:[B

    const/16 v3, 0x8

    invoke-static {p0, p1, v3, p2, v2}, Ld/b/k/m$i;->N(I[BIII)V

    goto :goto_0

    :cond_1
    iget-object p1, v1, Le/b/a/a/o/h/a;->i:[B

    invoke-static {p0, p1, v2, p2, v2}, Ld/b/k/m$i;->N(I[BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    :goto_0
    monitor-exit v0

    .line 7
    iget-object p0, v1, Le/b/a/a/o/h/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object v1

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final c()Le/b/a/a/o/h/a;
    .locals 9

    iget v0, p0, Le/b/a/a/o/h/a;->e:I

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x4

    and-int/lit8 v4, v2, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v1, v5

    :cond_1
    and-int v4, v2, v2

    .line 1
    sget-object v4, Le/b/a/a/o/h/a;->m:Le/b/a/a/o/h/c;

    .line 2
    monitor-enter v4

    :try_start_0
    iget-object v6, v4, Le/b/a/a/o/h/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/b/a/a/o/h/a;

    if-nez v6, :cond_2

    new-instance v6, Le/b/a/a/o/h/a;

    invoke-direct {v6, v0}, Le/b/a/a/o/h/a;-><init>(I)V

    :cond_2
    const/4 v7, 0x0

    .line 3
    invoke-virtual {v6, v0, v7, v5}, Le/b/a/a/o/h/a;->x(II[B)V

    const/4 v0, 0x6

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    iget v5, v6, Le/b/a/a/o/h/a;->e:I

    if-eq v5, v3, :cond_3

    if-eq v5, v0, :cond_3

    iget-object v5, v6, Le/b/a/a/o/h/a;->i:[B

    const/16 v8, 0x8

    invoke-static {v1, v5, v8, v7, v2}, Ld/b/k/m$i;->N(I[BIII)V

    goto :goto_0

    :cond_3
    iget-object v5, v6, Le/b/a/a/o/h/a;->i:[B

    invoke-static {v1, v5, v2, v7, v2}, Ld/b/k/m$i;->N(I[BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_4
    :goto_0
    monitor-exit v4

    .line 7
    iget-object v1, v6, Le/b/a/a/o/h/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    iget v1, p0, Le/b/a/a/o/h/a;->e:I

    if-eq v1, v3, :cond_5

    if-eq v1, v0, :cond_5

    iget-object v1, p0, Le/b/a/a/o/h/a;->i:[B

    invoke-static {v1, v2}, Ld/b/k/m$i;->z1([BI)I

    move-result v1

    int-to-long v4, v1

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x0

    .line 9
    :goto_1
    iget v1, v6, Le/b/a/a/o/h/a;->e:I

    if-eq v1, v3, :cond_6

    if-eq v1, v0, :cond_6

    long-to-int v0, v4

    iget-object v1, v6, Le/b/a/a/o/h/a;->i:[B

    invoke-static {v0, v1, v2, v7, v2}, Ld/b/k/m$i;->N(I[BIII)V

    :cond_6
    return-object v6

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit v4

    throw v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->w()V

    return-void
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Le/b/a/a/o/h/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0
.end method

.method public final i()I
    .locals 4

    iget v0, p0, Le/b/a/a/o/h/a;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    invoke-static {v0, v1, v2}, Ld/b/k/m$i;->A1([BII)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    const-string v3, "<this>"

    .line 1
    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final j()Le/c/b/x;
    .locals 5

    iget-object v0, p0, Le/b/a/a/o/h/a;->k:Le/c/b/x;

    if-nez v0, :cond_3

    .line 1
    invoke-virtual {p0}, Le/b/a/a/o/h/a;->i()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Le/b/a/a/o/h/e/b;->a:Le/b/a/a/o/h/e/b;

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->k()I

    move-result v1

    .line 2
    sget-object v2, Le/b/a/a/o/h/e/b;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/o/h/e/a;

    if-nez v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v2, p0, Le/b/a/a/o/h/a;->i:[B

    .line 4
    invoke-virtual {p0}, Le/b/a/a/o/h/a;->h()I

    move-result v3

    const-string v4, "payload"

    .line 5
    invoke-static {v2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Le/b/a/a/o/h/e/a;->a:Lf/m/a/d;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lf/m/a/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    check-cast v0, Le/c/b/x;

    .line 7
    :goto_1
    iput-object v0, p0, Le/b/a/a/o/h/a;->k:Le/c/b/x;

    goto :goto_2

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.google.protobuf.MessageLite"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    :goto_2
    iget-object v0, p0, Le/b/a/a/o/h/a;->k:Le/c/b/x;

    return-object v0
.end method

.method public final k()I
    .locals 2

    iget v0, p0, Le/b/a/a/o/h/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ld/b/k/m$i;->z1([BI)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ld/b/k/m$i;->z1([BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final m()I
    .locals 2

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->h()I

    move-result v0

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->i()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final n()Z
    .locals 2

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->k()I

    move-result v0

    const v1, 0x18001

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->i()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q(Z)[B
    .locals 3

    if-eqz p1, :cond_0

    iget p1, p0, Le/b/a/a/o/h/a;->e:I

    iget-object v0, p0, Le/b/a/a/o/h/a;->g:[B

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Ld/b/k/m$i;->N(I[BIII)V

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->m()I

    move-result p1

    iget-object v0, p0, Le/b/a/a/o/h/a;->g:[B

    const/4 v1, 0x4

    invoke-static {p1, v0, v1, v2, v1}, Ld/b/k/m$i;->N(I[BIII)V

    :cond_0
    iget-object p1, p0, Le/b/a/a/o/h/a;->g:[B

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "channel: "

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/b/a/a/o/h/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceType: 0x000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->k()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Ld/b/k/m$i;->o(I)I

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " header size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  payload size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object v1

    const-string v2, " payload: "

    invoke-static {v2, v1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Le/c/b/x;)V
    .locals 3

    iput-object p1, p0, Le/b/a/a/o/h/a;->k:Le/c/b/x;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le/b/a/a/o/h/a;->z(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Le/c/b/x;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Le/b/a/a/o/h/a;->z(I)V

    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->h()I

    move-result v1

    invoke-interface {p1}, Le/c/b/x;->getSerializedSize()I

    move-result v2

    invoke-static {v0, v1, v2}, Le/c/b/i;->s([BII)Le/c/b/i;

    move-result-object v0

    invoke-interface {p1, v0}, Le/c/b/x;->writeTo(Le/c/b/i;)V

    return-void
.end method

.method public final v([BII)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Le/b/a/a/o/h/a;->z(I)V

    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->h()I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Le/b/a/a/o/h/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/a/a/o/h/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "message"

    .line 1
    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Le/b/a/a/o/h/a;->m:Le/b/a/a/o/h/c;

    .line 3
    monitor-enter v0

    :try_start_0
    const-string v1, "message"

    invoke-static {p0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Le/b/a/a/o/h/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this message "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already recycled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x(II[B)V
    .locals 1

    iput p1, p0, Le/b/a/a/o/h/a;->e:I

    const/4 p1, 0x0

    iput-object p1, p0, Le/b/a/a/o/h/a;->k:Le/c/b/x;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le/b/a/a/o/h/a;->z(I)V

    invoke-virtual {p0, p2}, Le/b/a/a/o/h/a;->y(I)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    invoke-static {p3, p1, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final y(I)V
    .locals 3

    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    new-array p1, p1, [B

    invoke-virtual {p0}, Le/b/a/a/o/h/a;->h()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1
    iput-object p1, p0, Le/b/a/a/o/h/a;->i:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/o/h/a;->j:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public final z(I)V
    .locals 3

    iget v0, p0, Le/b/a/a/o/h/a;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    invoke-static {p1, v0, v1, v1, v2}, Ld/b/k/m$i;->N(I[BIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/o/h/a;->i:[B

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v2}, Ld/b/k/m$i;->N(I[BIII)V

    :goto_0
    invoke-virtual {p0}, Le/b/a/a/o/h/a;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Le/b/a/a/o/h/a;->y(I)V

    return-void
.end method
