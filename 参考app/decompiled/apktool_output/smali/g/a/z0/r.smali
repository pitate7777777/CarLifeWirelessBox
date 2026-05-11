.class public Lg/a/z0/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg/a/z0/s;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile synthetic _size:I

.field public a:[Lg/a/z0/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/a/z0/r;->_size:I

    return-void
.end method


# virtual methods
.method public final a(Lg/a/z0/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lg/a/z0/s;->c(Lg/a/z0/r;)V

    .line 1
    iget-object v0, p0, Lg/a/z0/r;->a:[Lg/a/z0/s;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lg/a/z0/s;

    iput-object v0, p0, Lg/a/z0/r;->a:[Lg/a/z0/s;

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Lg/a/z0/r;->_size:I

    .line 3
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 4
    iget v1, p0, Lg/a/z0/r;->_size:I

    mul-int/lit8 v1, v1, 0x2

    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lg/a/z0/s;

    iput-object v0, p0, Lg/a/z0/r;->a:[Lg/a/z0/s;

    .line 6
    :cond_1
    :goto_0
    iget v1, p0, Lg/a/z0/r;->_size:I

    add-int/lit8 v2, v1, 0x1

    .line 7
    iput v2, p0, Lg/a/z0/r;->_size:I

    .line 8
    aput-object p1, v0, v1

    invoke-interface {p1, v1}, Lg/a/z0/s;->b(I)V

    invoke-virtual {p0, v1}, Lg/a/z0/r;->d(I)V

    return-void
.end method

.method public final b()Lg/a/z0/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lg/a/z0/r;->a:[Lg/a/z0/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public final c(I)Lg/a/z0/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lg/a/z0/r;->a:[Lg/a/z0/s;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 1
    iget v1, p0, Lg/a/z0/r;->_size:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 2
    iput v1, p0, Lg/a/z0/r;->_size:I

    .line 3
    iget v1, p0, Lg/a/z0/r;->_size:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lg/a/z0/r;->_size:I

    .line 4
    invoke-virtual {p0, p1, v1}, Lg/a/z0/r;->e(II)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_0

    aget-object v3, v0, p1

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    invoke-static {v4}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {p0, p1, v1}, Lg/a/z0/r;->e(II)V

    invoke-virtual {p0, v1}, Lg/a/z0/r;->d(I)V

    goto :goto_1

    :cond_0
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 5
    iget v3, p0, Lg/a/z0/r;->_size:I

    if-lt v1, v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, p0, Lg/a/z0/r;->a:[Lg/a/z0/s;

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v1, 0x1

    .line 7
    iget v5, p0, Lg/a/z0/r;->_size:I

    if-ge v4, v5, :cond_2

    .line 8
    aget-object v5, v3, v4

    invoke-static {v5}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v3, v1

    invoke-static {v6}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    move v1, v4

    :cond_2
    aget-object v4, v3, p1

    invoke-static {v4}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Comparable;

    aget-object v3, v3, v1

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v1}, Lg/a/z0/r;->e(II)V

    move p1, v1

    goto :goto_0

    .line 9
    :cond_4
    :goto_1
    iget p1, p0, Lg/a/z0/r;->_size:I

    .line 10
    aget-object p1, v0, p1

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lg/a/z0/s;->c(Lg/a/z0/r;)V

    invoke-interface {p1, v2}, Lg/a/z0/s;->b(I)V

    .line 11
    iget v2, p0, Lg/a/z0/r;->_size:I

    .line 12
    aput-object v1, v0, v2

    return-object p1
.end method

.method public final d(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/a/z0/r;->a:[Lg/a/z0/s;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lg/a/z0/r;->e(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final e(II)V
    .locals 3

    iget-object v0, p0, Lg/a/z0/r;->a:[Lg/a/z0/s;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    aget-object v1, v0, p2

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    aget-object v2, v0, p1

    invoke-static {v2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    aput-object v2, v0, p2

    invoke-interface {v1, p1}, Lg/a/z0/s;->b(I)V

    invoke-interface {v2, p2}, Lg/a/z0/s;->b(I)V

    return-void
.end method
