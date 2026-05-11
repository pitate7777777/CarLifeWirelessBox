.class public final Le/b/a/a/o/e/c/a/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Le/b/a/a/o/e/c/a/c;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;IZ)V
    .locals 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iput v0, p0, Le/b/a/a/o/e/c/a/c;->b:I

    :cond_0
    iget p3, p0, Le/b/a/a/o/e/c/a/c;->b:I

    add-int/2addr p3, p2

    iget-object v1, p0, Le/b/a/a/o/e/c/a/c;->a:[B

    array-length v2, v1

    if-le p3, v2, :cond_1

    .line 1
    new-array p3, p3, [B

    array-length v2, v1

    invoke-static {v1, v0, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Le/b/a/a/o/e/c/a/c;->a:[B

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    if-le p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move p3, p2

    :goto_0
    if-lez p3, :cond_4

    iget-object v0, p0, Le/b/a/a/o/e/c/a/c;->a:[B

    iget v1, p0, Le/b/a/a/o/e/c/a/c;->b:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p2, v2, :cond_3

    move p2, v2

    :cond_3
    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_4
    iget p1, p0, Le/b/a/a/o/e/c/a/c;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Le/b/a/a/o/e/c/a/c;->b:I

    return-void
.end method
