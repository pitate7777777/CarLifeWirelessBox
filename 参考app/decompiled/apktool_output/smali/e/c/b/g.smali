.class public abstract Le/c/b/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/g$b;,
        Le/c/b/g$f;,
        Le/c/b/g$d;,
        Le/c/b/g$e;,
        Le/c/b/g$a;,
        Le/c/b/g$g;,
        Le/c/b/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final f:Le/c/b/g;

.field public static final g:Le/c/b/g$c;


# instance fields
.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Le/c/b/g;

    new-instance v0, Le/c/b/g$f;

    sget-object v1, Le/c/b/r;->b:[B

    invoke-direct {v0, v1}, Le/c/b/g$f;-><init>([B)V

    sput-object v0, Le/c/b/g;->f:Le/c/b/g;

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.content.Context"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Le/c/b/g$g;

    invoke-direct {v0, v1}, Le/c/b/g$g;-><init>(Le/c/b/f;)V

    goto :goto_1

    :cond_0
    new-instance v0, Le/c/b/g$a;

    invoke-direct {v0, v1}, Le/c/b/g$a;-><init>(Le/c/b/f;)V

    :goto_1
    sput-object v0, Le/c/b/g;->g:Le/c/b/g$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/c/b/g;->e:I

    return-void
.end method

.method public static d(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static e(Ljava/lang/String;)Le/c/b/g;
    .locals 2

    new-instance v0, Le/c/b/g$f;

    sget-object v1, Le/c/b/r;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Le/c/b/g$f;-><init>([B)V

    return-object v0
.end method

.method public static f(I)Le/c/b/g$d;
    .locals 2

    new-instance v0, Le/c/b/g$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/c/b/g$d;-><init>(ILe/c/b/f;)V

    return-object v0
.end method

.method public static i([B)Le/c/b/g;
    .locals 1

    new-instance v0, Le/c/b/g$f;

    invoke-direct {v0, p0}, Le/c/b/g$f;-><init>([B)V

    return-object v0
.end method

.method public static j([BII)Le/c/b/g;
    .locals 1

    new-instance v0, Le/c/b/g$b;

    invoke-direct {v0, p0, p1, p2}, Le/c/b/g$b;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract g()Le/c/b/h;
.end method

.method public final h()Ljava/lang/String;
    .locals 5

    sget-object v0, Le/c/b/r;->a:Ljava/nio/charset/Charset;

    .line 1
    invoke-virtual {p0}, Le/c/b/g;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v1, p0

    check-cast v1, Le/c/b/g$f;

    .line 2
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Le/c/b/g$f;->h:[B

    invoke-virtual {v1}, Le/c/b/g$f;->k()I

    move-result v4

    invoke-virtual {v1}, Le/c/b/g$f;->size()I

    move-result v1

    invoke-direct {v2, v3, v4, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Le/c/b/g;->e:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/c/b/g;->size()I

    move-result v0

    move-object v1, p0

    check-cast v1, Le/c/b/g$f;

    .line 1
    iget-object v2, v1, Le/c/b/g$f;->h:[B

    invoke-virtual {v1}, Le/c/b/g$f;->k()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-static {v0, v2, v1, v0}, Le/c/b/r;->c(I[BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    :cond_0
    iput v0, p0, Le/c/b/g;->e:I

    :cond_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Le/c/b/f;

    invoke-direct {v0, p0}, Le/c/b/f;-><init>(Le/c/b/g;)V

    return-object v0
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Le/c/b/g;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
