.class public Ld/t/a/a/f;
.super Ld/t/a/a/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t/a/a/f$c;,
        Ld/t/a/a/f$b;,
        Ld/t/a/a/f$f;,
        Ld/t/a/a/f$d;,
        Ld/t/a/a/f$e;,
        Ld/t/a/a/f$g;,
        Ld/t/a/a/f$h;,
        Ld/t/a/a/f$i;
    }
.end annotation


# static fields
.field public static final n:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public f:Ld/t/a/a/f$h;

.field public g:Landroid/graphics/PorterDuffColorFilter;

.field public h:Landroid/graphics/ColorFilter;

.field public i:Z

.field public j:Z

.field public final k:[F

.field public final l:Landroid/graphics/Matrix;

.field public final m:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Ld/t/a/a/f;->n:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/t/a/a/e;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/t/a/a/f;->j:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Ld/t/a/a/f;->k:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ld/t/a/a/f;->l:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    new-instance v0, Ld/t/a/a/f$h;

    invoke-direct {v0}, Ld/t/a/a/f$h;-><init>()V

    iput-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    return-void
.end method

.method public constructor <init>(Ld/t/a/a/f$h;)V
    .locals 1

    invoke-direct {p0}, Ld/t/a/a/e;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/t/a/a/f;->j:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Ld/t/a/a/f;->k:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ld/t/a/a/f;->l:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    iput-object p1, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v0, p1, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Ld/t/a/a/f$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Ld/t/a/a/f;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ld/t/a/a/f;->g:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public static a(IF)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Ld/t/a/a/f;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/t/a/a/f;

    invoke-direct {v0}, Ld/t/a/a/f;-><init>()V

    invoke-static {p0, p1, p2}, Ld/h/e/b/h;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    new-instance p0, Ld/t/a/a/f$i;

    iget-object p1, v0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/t/a/a/f$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    invoke-static {p0, p1, v0, p2}, Ld/t/a/a/f;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ld/t/a/a/f;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    const-string p1, "VectorDrawableCompat"

    const-string p2, "parser error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ld/t/a/a/f;
    .locals 1

    new-instance v0, Ld/t/a/a/f;

    invoke-direct {v0}, Ld/t/a/a/f;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Ld/t/a/a/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ld/t/a/a/e;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Ld/t/a/a/f;->h:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/t/a/a/f;->g:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v1, p0, Ld/t/a/a/f;->l:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Ld/t/a/a/f;->l:Landroid/graphics/Matrix;

    iget-object v2, p0, Ld/t/a/a/f;->k:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Ld/t/a/a/f;->k:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Ld/t/a/a/f;->k:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Ld/t/a/a/f;->k:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v6, p0, Ld/t/a/a/f;->k:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    cmpl-float v4, v6, v8

    if-eqz v4, :cond_4

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_4
    iget-object v4, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    iget-object v4, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_11

    if-gtz v3, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v6, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1
    invoke-virtual {p0}, Ld/t/a/a/f;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, Ld/b/k/m$i;->b0(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    if-ne v6, v5, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_7

    .line 2
    iget-object v6, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_7
    iget-object v6, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v6, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    .line 3
    iget-object v7, v6, Ld/t/a/a/f$h;->f:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_9

    .line 4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v1, v7, :cond_8

    iget-object v7, v6, Ld/t/a/a/f$h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v3, v7, :cond_8

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_a

    .line 5
    :cond_9
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Ld/t/a/a/f$h;->f:Landroid/graphics/Bitmap;

    iput-boolean v5, v6, Ld/t/a/a/f$h;->k:Z

    .line 6
    :cond_a
    iget-boolean v6, p0, Ld/t/a/a/f;->j:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    invoke-virtual {v6, v1, v3}, Ld/t/a/a/f$h;->b(II)V

    goto :goto_3

    :cond_b
    iget-object v6, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    .line 7
    iget-boolean v7, v6, Ld/t/a/a/f$h;->k:Z

    if-nez v7, :cond_c

    iget-object v7, v6, Ld/t/a/a/f$h;->g:Landroid/content/res/ColorStateList;

    iget-object v8, v6, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    if-ne v7, v8, :cond_c

    iget-object v7, v6, Ld/t/a/a/f$h;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v6, Ld/t/a/a/f$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v7, v8, :cond_c

    iget-boolean v7, v6, Ld/t/a/a/f$h;->j:Z

    iget-boolean v8, v6, Ld/t/a/a/f$h;->e:Z

    if-ne v7, v8, :cond_c

    iget v7, v6, Ld/t/a/a/f$h;->i:I

    iget-object v6, v6, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    invoke-virtual {v6}, Ld/t/a/a/f$g;->getRootAlpha()I

    move-result v6

    if-ne v7, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_d

    .line 8
    iget-object v6, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    invoke-virtual {v6, v1, v3}, Ld/t/a/a/f$h;->b(II)V

    iget-object v1, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    .line 9
    iget-object v3, v1, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    iput-object v3, v1, Ld/t/a/a/f$h;->g:Landroid/content/res/ColorStateList;

    iget-object v3, v1, Ld/t/a/a/f$h;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v1, Ld/t/a/a/f$h;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, v1, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    invoke-virtual {v3}, Ld/t/a/a/f$g;->getRootAlpha()I

    move-result v3

    iput v3, v1, Ld/t/a/a/f$h;->i:I

    iget-boolean v3, v1, Ld/t/a/a/f$h;->e:Z

    iput-boolean v3, v1, Ld/t/a/a/f$h;->j:Z

    iput-boolean v2, v1, Ld/t/a/a/f$h;->k:Z

    .line 10
    :cond_d
    :goto_3
    iget-object v1, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v3, p0, Ld/t/a/a/f;->m:Landroid/graphics/Rect;

    .line 11
    iget-object v6, v1, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    invoke-virtual {v6}, Ld/t/a/a/f$g;->getRootAlpha()I

    move-result v6

    const/16 v7, 0xff

    if-ge v6, v7, :cond_e

    const/4 v2, 0x1

    :cond_e
    const/4 v6, 0x0

    if-nez v2, :cond_f

    if-nez v0, :cond_f

    move-object v0, v6

    goto :goto_4

    .line 12
    :cond_f
    iget-object v2, v1, Ld/t/a/a/f$h;->l:Landroid/graphics/Paint;

    if-nez v2, :cond_10

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Ld/t/a/a/f$h;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_10
    iget-object v2, v1, Ld/t/a/a/f$h;->l:Landroid/graphics/Paint;

    iget-object v5, v1, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    invoke-virtual {v5}, Ld/t/a/a/f$g;->getRootAlpha()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v1, Ld/t/a/a/f$h;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v1, Ld/t/a/a/f$h;->l:Landroid/graphics/Paint;

    .line 13
    :goto_4
    iget-object v1, v1, Ld/t/a/a/f$h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v6, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_11
    :goto_5
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v0, v0, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    invoke-virtual {v0}, Ld/t/a/a/f$g;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    invoke-virtual {v1}, Ld/t/a/a/f$h;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->h:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/t/a/a/f$i;

    iget-object v1, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/t/a/a/f$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    invoke-virtual {p0}, Ld/t/a/a/f;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Ld/t/a/a/f$h;->a:I

    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v0, v0, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    iget v0, v0, Ld/t/a/a/f$g;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v0, v0, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    iget v0, v0, Ld/t/a/a/f$g;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ld/t/a/a/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v2, v0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1
    invoke-virtual {v2, v1, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 2
    :cond_0
    iget-object v11, v0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    new-instance v2, Ld/t/a/a/f$g;

    invoke-direct {v2}, Ld/t/a/a/f$g;-><init>()V

    iput-object v2, v11, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    sget-object v2, Ld/t/a/a/a;->a:[I

    invoke-static {v1, v10, v9, v2}, Ld/b/k/m$i;->M0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3
    iget-object v3, v0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v4, v3, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    const-string v5, "tintMode"

    const/4 v12, 0x6

    const/4 v13, -0x1

    invoke-static {v2, v8, v5, v12, v13}, Ld/b/k/m$i;->f0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v14, 0x9

    const/4 v15, 0x5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    if-eq v5, v15, :cond_3

    if-eq v5, v14, :cond_1

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 5
    :cond_3
    :goto_0
    iput-object v6, v3, Ld/t/a/a/f$h;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v5, "tint"

    .line 6
    invoke-static {v8, v5}, Ld/b/k/m$i;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x2

    if-eqz v5, :cond_6

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2, v14, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v6, v5, Landroid/util/TypedValue;->type:I

    if-eq v6, v13, :cond_5

    const/16 v13, 0x1c

    if-lt v6, v13, :cond_4

    const/16 v13, 0x1f

    if-gt v6, v13, :cond_4

    .line 7
    iget v5, v5, Landroid/util/TypedValue;->data:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2, v14, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {v5, v6, v10}, Ld/h/e/b/a;->c(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_7

    .line 9
    iput-object v5, v3, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    :cond_7
    iget-boolean v5, v3, Ld/t/a/a/f$h;->e:Z

    const-string v6, "autoMirrored"

    .line 10
    invoke-static {v8, v6}, Ld/b/k/m$i;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 11
    :goto_2
    iput-boolean v5, v3, Ld/t/a/a/f$h;->e:Z

    iget v3, v4, Ld/t/a/a/f$g;->k:F

    const-string v5, "viewportWidth"

    const/4 v13, 0x7

    invoke-static {v2, v8, v5, v13, v3}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v4, Ld/t/a/a/f$g;->k:F

    iget v3, v4, Ld/t/a/a/f$g;->l:F

    const-string v5, "viewportHeight"

    const/16 v6, 0x8

    invoke-static {v2, v8, v5, v6, v3}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v4, Ld/t/a/a/f$g;->l:F

    iget v5, v4, Ld/t/a/a/f$g;->k:F

    const/16 v19, 0x0

    cmpg-float v5, v5, v19

    if-lez v5, :cond_25

    cmpg-float v3, v3, v19

    if-lez v3, :cond_24

    iget v3, v4, Ld/t/a/a/f$g;->i:F

    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Ld/t/a/a/f$g;->i:F

    iget v3, v4, Ld/t/a/a/f$g;->j:F

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Ld/t/a/a/f$g;->j:F

    iget v5, v4, Ld/t/a/a/f$g;->i:F

    cmpg-float v5, v5, v19

    if-lez v5, :cond_23

    cmpg-float v3, v3, v19

    if-lez v3, :cond_22

    invoke-virtual {v4}, Ld/t/a/a/f$g;->getAlpha()F

    move-result v3

    const-string v5, "alpha"

    const/4 v15, 0x4

    invoke-static {v2, v8, v5, v15, v3}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    invoke-virtual {v4, v3}, Ld/t/a/a/f$g;->setAlpha(F)V

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iput-object v3, v4, Ld/t/a/a/f$g;->n:Ljava/lang/String;

    iget-object v5, v4, Ld/t/a/a/f$g;->p:Ld/e/a;

    invoke-virtual {v5, v3, v4}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Ld/t/a/a/f;->getChangingConfigurations()I

    move-result v2

    iput v2, v11, Ld/t/a/a/f$h;->a:I

    iput-boolean v14, v11, Ld/t/a/a/f$h;->k:Z

    .line 13
    iget-object v5, v0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v4, v5, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v2, v4, Ld/t/a/a/f$g;->h:Ld/t/a/a/f$d;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    add-int/lit8 v13, v20, 0x1

    const/16 v20, 0x1

    :goto_3
    if-eq v2, v14, :cond_20

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ge v6, v13, :cond_a

    if-eq v2, v7, :cond_20

    :cond_a
    const-string v6, "group"

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1e

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/t/a/a/f$d;

    const-string v15, "path"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v14, "fillType"

    const-string v12, "pathData"

    if-eqz v15, :cond_15

    new-instance v15, Ld/t/a/a/f$c;

    invoke-direct {v15}, Ld/t/a/a/f$c;-><init>()V

    .line 14
    sget-object v2, Ld/t/a/a/a;->c:[I

    invoke-static {v1, v10, v9, v2}, Ld/b/k/m$i;->M0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v2, 0x0

    .line 15
    iput-object v2, v15, Ld/t/a/a/f$c;->e:[I

    invoke-static {v8, v12}, Ld/b/k/m$i;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object v12, v7

    move/from16 v21, v13

    const/16 v0, 0x8

    const/16 v16, 0x9

    const/16 v18, -0x1

    move-object v13, v6

    goto/16 :goto_6

    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    iput-object v2, v15, Ld/t/a/a/f$f;->b:Ljava/lang/String;

    :cond_c
    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-static {v12}, Ld/b/k/m$i;->G(Ljava/lang/String;)[Ld/h/f/c;

    move-result-object v2

    iput-object v2, v15, Ld/t/a/a/f$f;->a:[Ld/h/f/c;

    :cond_d
    const/4 v12, 0x1

    const/16 v20, 0x0

    const-string v21, "fillColor"

    const/16 v18, 0x0

    move-object v2, v6

    move-object/from16 v22, v3

    move-object/from16 v3, p2

    move-object/from16 v23, v4

    move-object/from16 v4, p4

    move-object/from16 v24, v5

    move-object/from16 v5, v21

    move/from16 v21, v13

    const/16 v0, 0x8

    move-object v13, v6

    move v6, v12

    move-object v12, v7

    move/from16 v7, v20

    invoke-static/range {v2 .. v7}, Ld/b/k/m$i;->d0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Ld/h/e/b/b;

    move-result-object v2

    iput-object v2, v15, Ld/t/a/a/f$c;->h:Ld/h/e/b/b;

    const/16 v2, 0xc

    iget v3, v15, Ld/t/a/a/f$c;->j:F

    const-string v4, "fillAlpha"

    invoke-static {v13, v8, v4, v2, v3}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v15, Ld/t/a/a/f$c;->j:F

    const-string v2, "strokeLineCap"

    const/4 v3, -0x1

    invoke-static {v13, v8, v2, v0, v3}, Ld/b/k/m$i;->f0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, v15, Ld/t/a/a/f$c;->n:Landroid/graphics/Paint$Cap;

    if-eqz v2, :cond_10

    const/4 v4, 0x1

    if-eq v2, v4, :cond_f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_e

    goto :goto_4

    .line 16
    :cond_e
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_4

    :cond_f
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_4

    :cond_10
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 17
    :goto_4
    iput-object v3, v15, Ld/t/a/a/f$c;->n:Landroid/graphics/Paint$Cap;

    const-string v2, "strokeLineJoin"

    const/4 v6, -0x1

    const/16 v7, 0x9

    invoke-static {v13, v8, v2, v7, v6}, Ld/b/k/m$i;->f0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, v15, Ld/t/a/a/f$c;->o:Landroid/graphics/Paint$Join;

    if-eqz v2, :cond_13

    const/4 v4, 0x1

    if-eq v2, v4, :cond_12

    const/4 v4, 0x2

    if-eq v2, v4, :cond_11

    goto :goto_5

    .line 18
    :cond_11
    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_5

    :cond_12
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_5

    :cond_13
    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 19
    :goto_5
    iput-object v3, v15, Ld/t/a/a/f$c;->o:Landroid/graphics/Paint$Join;

    const/16 v2, 0xa

    iget v3, v15, Ld/t/a/a/f$c;->p:F

    const-string v4, "strokeMiterLimit"

    invoke-static {v13, v8, v4, v2, v3}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v15, Ld/t/a/a/f$c;->p:F

    const/16 v16, 0x3

    const/16 v17, 0x0

    const-string v5, "strokeColor"

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    const/16 v18, -0x1

    move/from16 v6, v16

    const/16 v16, 0x9

    move/from16 v7, v17

    invoke-static/range {v2 .. v7}, Ld/b/k/m$i;->d0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Ld/h/e/b/b;

    move-result-object v2

    iput-object v2, v15, Ld/t/a/a/f$c;->f:Ld/h/e/b/b;

    const/16 v2, 0xb

    iget v3, v15, Ld/t/a/a/f$c;->i:F

    const-string v4, "strokeAlpha"

    invoke-static {v13, v8, v4, v2, v3}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v15, Ld/t/a/a/f$c;->i:F

    iget v2, v15, Ld/t/a/a/f$c;->g:F

    const-string v3, "strokeWidth"

    const/4 v4, 0x4

    invoke-static {v13, v8, v3, v4, v2}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v15, Ld/t/a/a/f$c;->g:F

    iget v2, v15, Ld/t/a/a/f$c;->l:F

    const-string v3, "trimPathEnd"

    const/4 v4, 0x6

    invoke-static {v13, v8, v3, v4, v2}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v15, Ld/t/a/a/f$c;->l:F

    iget v2, v15, Ld/t/a/a/f$c;->m:F

    const-string v3, "trimPathOffset"

    const/4 v4, 0x7

    invoke-static {v13, v8, v3, v4, v2}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v15, Ld/t/a/a/f$c;->m:F

    iget v2, v15, Ld/t/a/a/f$c;->k:F

    const-string v3, "trimPathStart"

    const/4 v4, 0x5

    invoke-static {v13, v8, v3, v4, v2}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v15, Ld/t/a/a/f$c;->k:F

    const/16 v2, 0xd

    iget v3, v15, Ld/t/a/a/f$f;->c:I

    invoke-static {v13, v8, v14, v2, v3}, Ld/b/k/m$i;->f0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    iput v2, v15, Ld/t/a/a/f$f;->c:I

    .line 20
    :goto_6
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    iget-object v2, v12, Ld/t/a/a/f$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ld/t/a/a/f$f;->getPathName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v23

    if-eqz v2, :cond_14

    iget-object v2, v3, Ld/t/a/a/f$g;->p:Ld/e/a;

    invoke-virtual {v15}, Ld/t/a/a/f$f;->getPathName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v15}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    move-object/from16 v4, v24

    iget v2, v4, Ld/t/a/a/f$h;->a:I

    iget v5, v15, Ld/t/a/a/f$f;->d:I

    or-int/2addr v2, v5

    iput v2, v4, Ld/t/a/a/f$h;->a:I

    move-object/from16 v5, v22

    const/4 v0, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/16 v20, 0x0

    goto/16 :goto_9

    :cond_15
    move-object/from16 v22, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v21, v13

    const/16 v0, 0x8

    const/16 v16, 0x9

    const/16 v18, -0x1

    const-string v5, "clip-path"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    new-instance v2, Ld/t/a/a/f$b;

    invoke-direct {v2}, Ld/t/a/a/f$b;-><init>()V

    .line 22
    invoke-static {v8, v12}, Ld/b/k/m$i;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_7

    :cond_16
    sget-object v5, Ld/t/a/a/a;->d:[I

    invoke-static {v1, v10, v9, v5}, Ld/b/k/m$i;->M0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    .line 23
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_17

    iput-object v12, v2, Ld/t/a/a/f$f;->b:Ljava/lang/String;

    :cond_17
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18

    invoke-static {v13}, Ld/b/k/m$i;->G(Ljava/lang/String;)[Ld/h/f/c;

    move-result-object v12

    iput-object v12, v2, Ld/t/a/a/f$f;->a:[Ld/h/f/c;

    :cond_18
    const/4 v12, 0x2

    invoke-static {v5, v8, v14, v12, v6}, Ld/b/k/m$i;->f0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    iput v13, v2, Ld/t/a/a/f$f;->c:I

    .line 24
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    :goto_7
    iget-object v5, v7, Ld/t/a/a/f$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ld/t/a/a/f$f;->getPathName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    iget-object v5, v3, Ld/t/a/a/f$g;->p:Ld/e/a;

    invoke-virtual {v2}, Ld/t/a/a/f$f;->getPathName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget v5, v4, Ld/t/a/a/f$h;->a:I

    iget v2, v2, Ld/t/a/a/f$f;->d:I

    or-int/2addr v2, v5

    iput v2, v4, Ld/t/a/a/f$h;->a:I

    goto/16 :goto_8

    :cond_1a
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v2, Ld/t/a/a/f$d;

    invoke-direct {v2}, Ld/t/a/a/f$d;-><init>()V

    .line 26
    sget-object v5, Ld/t/a/a/a;->b:[I

    invoke-static {v1, v10, v9, v5}, Ld/b/k/m$i;->M0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v12, 0x0

    .line 27
    iput-object v12, v2, Ld/t/a/a/f$d;->l:[I

    iget v6, v2, Ld/t/a/a/f$d;->c:F

    const-string v13, "rotation"

    const/4 v14, 0x5

    invoke-static {v5, v8, v13, v14, v6}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    iput v6, v2, Ld/t/a/a/f$d;->c:F

    iget v6, v2, Ld/t/a/a/f$d;->d:F

    const/4 v13, 0x1

    invoke-virtual {v5, v13, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v2, Ld/t/a/a/f$d;->d:F

    iget v6, v2, Ld/t/a/a/f$d;->e:F

    const/4 v15, 0x2

    invoke-virtual {v5, v15, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v2, Ld/t/a/a/f$d;->e:F

    iget v6, v2, Ld/t/a/a/f$d;->f:F

    const-string v0, "scaleX"

    const/4 v12, 0x3

    invoke-static {v5, v8, v0, v12, v6}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v2, Ld/t/a/a/f$d;->f:F

    iget v0, v2, Ld/t/a/a/f$d;->g:F

    const-string v6, "scaleY"

    const/4 v13, 0x4

    invoke-static {v5, v8, v6, v13, v0}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v2, Ld/t/a/a/f$d;->g:F

    iget v0, v2, Ld/t/a/a/f$d;->h:F

    const-string v6, "translateX"

    const/4 v13, 0x6

    invoke-static {v5, v8, v6, v13, v0}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v2, Ld/t/a/a/f$d;->h:F

    iget v0, v2, Ld/t/a/a/f$d;->i:F

    const-string v6, "translateY"

    const/4 v13, 0x7

    invoke-static {v5, v8, v6, v13, v0}, Ld/b/k/m$i;->e0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v2, Ld/t/a/a/f$d;->i:F

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b

    iput-object v6, v2, Ld/t/a/a/f$d;->m:Ljava/lang/String;

    :cond_1b
    invoke-virtual {v2}, Ld/t/a/a/f$d;->c()V

    .line 28
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    iget-object v5, v7, Ld/t/a/a/f$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v22

    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ld/t/a/a/f$d;->getGroupName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    iget-object v6, v3, Ld/t/a/a/f$g;->p:Ld/e/a;

    invoke-virtual {v2}, Ld/t/a/a/f$d;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget v6, v4, Ld/t/a/a/f$h;->a:I

    iget v2, v2, Ld/t/a/a/f$d;->k:I

    or-int/2addr v2, v6

    iput v2, v4, Ld/t/a/a/f$h;->a:I

    goto :goto_9

    :cond_1d
    :goto_8
    move-object/from16 v5, v22

    const/4 v0, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x2

    goto :goto_9

    :cond_1e
    move/from16 v21, v13

    const/4 v0, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/16 v16, 0x9

    const/16 v18, -0x1

    move-object/from16 v25, v5

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, v25

    if-ne v2, v12, :cond_1f

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_1f
    :goto_9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/16 v6, 0x8

    const/4 v7, 0x3

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x4

    move-object/from16 v0, p0

    move/from16 v13, v21

    move-object/from16 v25, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, v25

    goto/16 :goto_3

    :cond_20
    if-nez v20, :cond_21

    .line 30
    iget-object v0, v11, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    iget-object v1, v11, Ld/t/a/a/f$h;->d:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1}, Ld/t/a/a/f;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v3, Ld/t/a/a/f;->g:Landroid/graphics/PorterDuffColorFilter;

    return-void

    :cond_21
    move-object/from16 v3, p0

    .line 31
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move-object v3, v0

    .line 32
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move-object v3, v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object v3, v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object v3, v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateSelf()V
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-boolean v0, v0, Ld/t/a/a/f$h;->e:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/t/a/a/f$h;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v0, v0, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Ld/t/a/a/f;->i:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, Ld/t/a/a/f$h;

    iget-object v1, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    invoke-direct {v0, v1}, Ld/t/a/a/f$h;-><init>(Ld/t/a/a/f$h;)V

    iput-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/t/a/a/f;->i:Z

    :cond_1
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 5

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v2, v1, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, v1, Ld/t/a/a/f$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2, v4}, Ld/t/a/a/f;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Ld/t/a/a/f;->g:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Ld/t/a/a/f;->invalidateSelf()V

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1}, Ld/t/a/a/f$h;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1
    iget-object v2, v1, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    .line 2
    iget-object v2, v2, Ld/t/a/a/f$g;->h:Ld/t/a/a/f$d;

    invoke-virtual {v2, p1}, Ld/t/a/a/f$d;->b([I)Z

    move-result p1

    .line 3
    iget-boolean v2, v1, Ld/t/a/a/f$h;->k:Z

    or-int/2addr v2, p1

    iput-boolean v2, v1, Ld/t/a/a/f$h;->k:Z

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Ld/t/a/a/f;->invalidateSelf()V

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    return v3
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v0, v0, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    invoke-virtual {v0}, Ld/t/a/a/f$g;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v0, v0, Ld/t/a/a/f$h;->b:Ld/t/a/a/f$g;

    invoke-virtual {v0, p1}, Ld/t/a/a/f$g;->setRootAlpha(I)V

    invoke-virtual {p0}, Ld/t/a/a/f;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iput-boolean p1, v0, Ld/t/a/a/f$h;->e:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, Ld/t/a/a/f;->h:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Ld/t/a/a/f;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ld/b/k/m$i;->m1(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/t/a/a/f;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ld/b/k/m$i;->n1(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v1, v0, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Ld/t/a/a/f$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Ld/t/a/a/f;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ld/t/a/a/f;->g:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Ld/t/a/a/f;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ld/b/k/m$i;->o1(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, Ld/t/a/a/f;->f:Ld/t/a/a/f$h;

    iget-object v1, v0, Ld/t/a/a/f$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Ld/t/a/a/f$h;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, Ld/t/a/a/f$h;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Ld/t/a/a/f;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ld/t/a/a/f;->g:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Ld/t/a/a/f;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ld/t/a/a/e;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
