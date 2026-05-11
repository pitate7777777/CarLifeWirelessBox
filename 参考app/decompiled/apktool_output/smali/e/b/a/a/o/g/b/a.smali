.class public Le/b/a/a/o/g/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/o/g/b/a$b;
    }
.end annotation


# static fields
.field public static final h:[F

.field public static final i:Ljava/nio/FloatBuffer;

.field public static final j:Ljava/nio/FloatBuffer;

.field public static final k:[F

.field public static final l:Ljava/nio/FloatBuffer;

.field public static final m:Ljava/nio/FloatBuffer;

.field public static final n:[F

.field public static final o:Ljava/nio/FloatBuffer;

.field public static final p:Ljava/nio/FloatBuffer;


# instance fields
.field public a:Ljava/nio/FloatBuffer;

.field public b:Ljava/nio/FloatBuffer;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Le/b/a/a/o/g/b/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Le/b/a/a/o/g/b/a;->h:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v1}, Le/b/a/a/o/g/b/c;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Le/b/a/a/o/g/b/a;->i:Ljava/nio/FloatBuffer;

    invoke-static {v0}, Le/b/a/a/o/g/b/c;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Le/b/a/a/o/g/b/a;->j:Ljava/nio/FloatBuffer;

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Le/b/a/a/o/g/b/a;->k:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    invoke-static {v1}, Le/b/a/a/o/g/b/c;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Le/b/a/a/o/g/b/a;->l:Ljava/nio/FloatBuffer;

    invoke-static {v2}, Le/b/a/a/o/g/b/c;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Le/b/a/a/o/g/b/a;->m:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Le/b/a/a/o/g/b/a;->n:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    invoke-static {v1}, Le/b/a/a/o/g/b/c;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Le/b/a/a/o/g/b/a;->o:Ljava/nio/FloatBuffer;

    invoke-static {v0}, Le/b/a/a/o/g/b/c;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Le/b/a/a/o/g/b/a;->p:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f13cd3a
        -0x41000000    # -0.5f
        -0x416c32c6
        0x3f000000    # 0.5f
        -0x416c32c6
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Le/b/a/a/o/g/b/a$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Le/b/a/a/o/g/b/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    sget-object v0, Le/b/a/a/o/g/b/a;->o:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Le/b/a/a/o/g/b/a;->a:Ljava/nio/FloatBuffer;

    sget-object v0, Le/b/a/a/o/g/b/a;->p:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Le/b/a/a/o/g/b/a;->b:Ljava/nio/FloatBuffer;

    iput v2, p0, Le/b/a/a/o/g/b/a;->d:I

    iput v1, p0, Le/b/a/a/o/g/b/a;->e:I

    sget-object v0, Le/b/a/a/o/g/b/a;->n:[F

    array-length v0, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Le/b/a/a/o/g/b/a;->l:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Le/b/a/a/o/g/b/a;->a:Ljava/nio/FloatBuffer;

    sget-object v0, Le/b/a/a/o/g/b/a;->m:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Le/b/a/a/o/g/b/a;->b:Ljava/nio/FloatBuffer;

    iput v2, p0, Le/b/a/a/o/g/b/a;->d:I

    iput v1, p0, Le/b/a/a/o/g/b/a;->e:I

    sget-object v0, Le/b/a/a/o/g/b/a;->k:[F

    array-length v0, v0

    goto :goto_0

    :cond_2
    sget-object v0, Le/b/a/a/o/g/b/a;->i:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Le/b/a/a/o/g/b/a;->a:Ljava/nio/FloatBuffer;

    sget-object v0, Le/b/a/a/o/g/b/a;->j:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Le/b/a/a/o/g/b/a;->b:Ljava/nio/FloatBuffer;

    iput v2, p0, Le/b/a/a/o/g/b/a;->d:I

    iput v1, p0, Le/b/a/a/o/g/b/a;->e:I

    sget-object v0, Le/b/a/a/o/g/b/a;->h:[F

    array-length v0, v0

    :goto_0
    div-int/2addr v0, v2

    iput v0, p0, Le/b/a/a/o/g/b/a;->c:I

    iput v1, p0, Le/b/a/a/o/g/b/a;->f:I

    iput-object p1, p0, Le/b/a/a/o/g/b/a;->g:Le/b/a/a/o/g/b/a$b;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Le/b/a/a/o/g/b/a;->g:Le/b/a/a/o/g/b/a$b;

    if-eqz v0, :cond_0

    const-string v0, "[Drawable2d: "

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/o/g/b/a;->g:Le/b/a/a/o/g/b/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[Drawable2d: ...]"

    return-object v0
.end method
