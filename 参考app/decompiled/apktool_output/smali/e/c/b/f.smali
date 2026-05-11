.class public Le/c/b/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:I

.field public final f:I

.field public final synthetic g:Le/c/b/g;


# direct methods
.method public constructor <init>(Le/c/b/g;)V
    .locals 0

    iput-object p1, p0, Le/c/b/f;->g:Le/c/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Le/c/b/f;->e:I

    iget-object p1, p0, Le/c/b/f;->g:Le/c/b/g;

    invoke-virtual {p1}, Le/c/b/g;->size()I

    move-result p1

    iput p1, p0, Le/c/b/f;->f:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Le/c/b/f;->e:I

    iget v1, p0, Le/c/b/f;->f:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/c/b/f;->g:Le/c/b/g;

    iget v1, p0, Le/c/b/f;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/c/b/f;->e:I

    invoke-virtual {v0, v1}, Le/c/b/g;->a(I)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
