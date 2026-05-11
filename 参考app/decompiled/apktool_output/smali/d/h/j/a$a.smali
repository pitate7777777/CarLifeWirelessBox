.class public Ld/h/j/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final f:[B


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Z

.field public final c:I

.field public d:I

.field public e:C


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, Ld/h/j/a$a;->f:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Ld/h/j/a$a;->f:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/h/j/a$a;->a:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Ld/h/j/a$a;->b:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Ld/h/j/a$a;->c:I

    return-void
.end method


# virtual methods
.method public a()B
    .locals 5

    iget-object v0, p0, Ld/h/j/a$a;->a:Ljava/lang/CharSequence;

    iget v1, p0, Ld/h/j/a$a;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ld/h/j/a$a;->e:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/h/j/a$a;->a:Ljava/lang/CharSequence;

    iget v1, p0, Ld/h/j/a$a;->d:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Ld/h/j/a$a;->d:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Ld/h/j/a$a;->d:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Ld/h/j/a$a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ld/h/j/a$a;->d:I

    iget-char v0, p0, Ld/h/j/a$a;->e:C

    const/16 v1, 0x700

    if-ge v0, v1, :cond_1

    .line 1
    sget-object v1, Ld/h/j/a$a;->f:[B

    aget-byte v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 2
    :goto_0
    iget-boolean v1, p0, Ld/h/j/a$a;->b:Z

    if-eqz v1, :cond_b

    iget-char v1, p0, Ld/h/j/a$a;->e:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_7

    .line 3
    iget v0, p0, Ld/h/j/a$a;->d:I

    :cond_2
    iget v1, p0, Ld/h/j/a$a;->d:I

    if-lez v1, :cond_6

    iget-object v3, p0, Ld/h/j/a$a;->a:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld/h/j/a$a;->d:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Ld/h/j/a$a;->e:C

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_3

    goto :goto_3

    :cond_3
    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x22

    if-eq v1, v3, :cond_5

    const/16 v3, 0x27

    if-ne v1, v3, :cond_2

    :cond_5
    iget-char v1, p0, Ld/h/j/a$a;->e:C

    :goto_1
    iget v3, p0, Ld/h/j/a$a;->d:I

    if-lez v3, :cond_2

    iget-object v4, p0, Ld/h/j/a$a;->a:Ljava/lang/CharSequence;

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ld/h/j/a$a;->d:I

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iput-char v3, p0, Ld/h/j/a$a;->e:C

    if-eq v3, v1, :cond_2

    goto :goto_1

    :cond_6
    :goto_2
    iput v0, p0, Ld/h/j/a$a;->d:I

    iput-char v2, p0, Ld/h/j/a$a;->e:C

    goto :goto_4

    :cond_7
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_b

    .line 4
    iget v0, p0, Ld/h/j/a$a;->d:I

    :cond_8
    iget v1, p0, Ld/h/j/a$a;->d:I

    if-lez v1, :cond_a

    iget-object v3, p0, Ld/h/j/a$a;->a:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld/h/j/a$a;->d:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Ld/h/j/a$a;->e:C

    const/16 v3, 0x26

    if-ne v1, v3, :cond_9

    :goto_3
    const/16 v0, 0xc

    goto :goto_5

    :cond_9
    if-ne v1, v2, :cond_8

    :cond_a
    iput v0, p0, Ld/h/j/a$a;->d:I

    iput-char v2, p0, Ld/h/j/a$a;->e:C

    :goto_4
    const/16 v0, 0xd

    :cond_b
    :goto_5
    return v0
.end method
