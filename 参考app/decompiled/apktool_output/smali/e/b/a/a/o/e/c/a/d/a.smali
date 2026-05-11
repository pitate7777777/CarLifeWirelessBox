.class public final Le/b/a/a/o/e/c/a/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/e/c/a/b;


# instance fields
.field public final e:Ljava/nio/ByteBuffer;

.field public final f:Le/b/a/a/o/e/c/a/a;

.field public g:I

.field public h:I

.field public final i:Z

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Le/b/a/a/o/e/c/a/a;IIZZI)V
    .locals 2

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    const/4 p4, 0x1

    :cond_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    const/4 p5, 0x1

    :cond_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_3

    const/4 p6, 0x0

    :cond_3
    const-string p7, "storage"

    .line 1
    invoke-static {p1, p7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "params"

    invoke-static {p2, p7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/e/c/a/d/a;->e:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Le/b/a/a/o/e/c/a/d/a;->f:Le/b/a/a/o/e/c/a/a;

    iput p3, p0, Le/b/a/a/o/e/c/a/d/a;->g:I

    iput p4, p0, Le/b/a/a/o/e/c/a/d/a;->h:I

    iput-boolean p5, p0, Le/b/a/a/o/e/c/a/d/a;->i:Z

    iput-boolean p6, p0, Le/b/a/a/o/e/c/a/d/a;->j:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Le/b/a/a/o/e/c/a/d/a;->g:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/o/e/c/a/d/a;->j:Z

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/e/c/a/d/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/o/e/c/a/d/a;->i:Z

    return v0
.end method

.method public e()Le/b/a/a/o/e/c/a/a;
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/e/c/a/d/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Le/b/a/a/o/e/c/a/d/a;->f:Le/b/a/a/o/e/c/a/a;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Le/b/a/a/o/e/c/a/d/a;->h:I

    return v0
.end method

.method public g()J
    .locals 3

    iget-object v0, p0, Le/b/a/a/o/e/c/a/d/a;->f:Le/b/a/a/o/e/c/a/a;

    iget-object v1, p0, Le/b/a/a/o/e/c/a/d/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Le/b/a/a/o/e/c/a/a;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/e/c/a/d/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Le/b/a/a/o/e/c/a/c;IJ)I
    .locals 0

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Le/b/a/a/o/e/c/a/d/a;->e:Ljava/nio/ByteBuffer;

    .line 1
    iget-object p3, p1, Le/b/a/a/o/e/c/a/c;->a:[B

    array-length p3, p3

    const/4 p4, 0x0

    .line 2
    invoke-virtual {p1, p2, p3, p4}, Le/b/a/a/o/e/c/a/c;->a(Ljava/nio/ByteBuffer;IZ)V

    .line 3
    iget p1, p1, Le/b/a/a/o/e/c/a/c;->b:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public r(Le/b/a/a/o/e/c/a/c;J)I
    .locals 1

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Le/b/a/a/o/e/c/a/d/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Le/b/a/a/o/e/c/a/c;->a(Ljava/nio/ByteBuffer;IZ)V

    .line 1
    iget p1, p1, Le/b/a/a/o/e/c/a/c;->b:I

    return p1
.end method
