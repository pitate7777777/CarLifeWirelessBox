.class public Le/c/a/a/z/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/z/e$b;,
        Le/c/a/a/z/e$d;,
        Le/c/a/a/z/e$c;,
        Le/c/a/a/z/e$g;,
        Le/c/a/a/z/e$h;,
        Le/c/a/a/z/e$f;,
        Le/c/a/a/z/e$e;
    }
.end annotation


# static fields
.field public static final A:Landroid/animation/TimeInterpolator;

.field public static final B:[I

.field public static final C:[I

.field public static final D:[I

.field public static final E:[I

.field public static final F:[I

.field public static final G:[I


# instance fields
.field public a:Le/c/a/a/f0/j;

.field public b:Le/c/a/a/f0/g;

.field public c:Z

.field public d:Z

.field public e:F

.field public f:F

.field public g:F

.field public final h:Le/c/a/a/a0/g;

.field public i:Le/c/a/a/l/g;

.field public j:Le/c/a/a/l/g;

.field public k:Landroid/animation/Animator;

.field public l:Le/c/a/a/l/g;

.field public m:Le/c/a/a/l/g;

.field public n:F

.field public o:F

.field public p:I

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/c/a/a/z/e$e;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final u:Le/c/a/a/e0/b;

.field public final v:Landroid/graphics/Rect;

.field public final w:Landroid/graphics/RectF;

.field public final x:Landroid/graphics/RectF;

.field public final y:Landroid/graphics/Matrix;

.field public z:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Le/c/a/a/l/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Le/c/a/a/z/e;->A:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Le/c/a/a/z/e;->B:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Le/c/a/a/z/e;->C:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Le/c/a/a/z/e;->D:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Le/c/a/a/z/e;->E:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Le/c/a/a/z/e;->F:[I

    new-array v0, v2, [I

    sput-object v0, Le/c/a/a/z/e;->G:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Le/c/a/a/e0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/c/a/a/z/e;->d:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Le/c/a/a/z/e;->o:F

    const/4 v0, 0x0

    iput v0, p0, Le/c/a/a/z/e;->p:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Le/c/a/a/z/e;->v:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le/c/a/a/z/e;->w:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le/c/a/a/z/e;->x:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/c/a/a/z/e;->y:Landroid/graphics/Matrix;

    iput-object p1, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Le/c/a/a/z/e;->u:Le/c/a/a/e0/b;

    new-instance p1, Le/c/a/a/a0/g;

    invoke-direct {p1}, Le/c/a/a/a0/g;-><init>()V

    iput-object p1, p0, Le/c/a/a/z/e;->h:Le/c/a/a/a0/g;

    sget-object p2, Le/c/a/a/z/e;->B:[I

    new-instance v0, Le/c/a/a/z/e$d;

    invoke-direct {v0, p0}, Le/c/a/a/z/e$d;-><init>(Le/c/a/a/z/e;)V

    invoke-virtual {p0, v0}, Le/c/a/a/z/e;->b(Le/c/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Le/c/a/a/a0/g;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Le/c/a/a/z/e;->h:Le/c/a/a/a0/g;

    sget-object p2, Le/c/a/a/z/e;->C:[I

    new-instance v0, Le/c/a/a/z/e$c;

    invoke-direct {v0, p0}, Le/c/a/a/z/e$c;-><init>(Le/c/a/a/z/e;)V

    invoke-virtual {p0, v0}, Le/c/a/a/z/e;->b(Le/c/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Le/c/a/a/a0/g;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Le/c/a/a/z/e;->h:Le/c/a/a/a0/g;

    sget-object p2, Le/c/a/a/z/e;->D:[I

    new-instance v0, Le/c/a/a/z/e$c;

    invoke-direct {v0, p0}, Le/c/a/a/z/e$c;-><init>(Le/c/a/a/z/e;)V

    invoke-virtual {p0, v0}, Le/c/a/a/z/e;->b(Le/c/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Le/c/a/a/a0/g;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Le/c/a/a/z/e;->h:Le/c/a/a/a0/g;

    sget-object p2, Le/c/a/a/z/e;->E:[I

    new-instance v0, Le/c/a/a/z/e$c;

    invoke-direct {v0, p0}, Le/c/a/a/z/e$c;-><init>(Le/c/a/a/z/e;)V

    invoke-virtual {p0, v0}, Le/c/a/a/z/e;->b(Le/c/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Le/c/a/a/a0/g;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Le/c/a/a/z/e;->h:Le/c/a/a/a0/g;

    sget-object p2, Le/c/a/a/z/e;->F:[I

    new-instance v0, Le/c/a/a/z/e$g;

    invoke-direct {v0, p0}, Le/c/a/a/z/e$g;-><init>(Le/c/a/a/z/e;)V

    invoke-virtual {p0, v0}, Le/c/a/a/z/e;->b(Le/c/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Le/c/a/a/a0/g;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Le/c/a/a/z/e;->h:Le/c/a/a/a0/g;

    sget-object p2, Le/c/a/a/z/e;->G:[I

    new-instance v0, Le/c/a/a/z/e$b;

    invoke-direct {v0, p0}, Le/c/a/a/z/e$b;-><init>(Le/c/a/a/z/e;)V

    invoke-virtual {p0, v0}, Le/c/a/a/z/e;->b(Le/c/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Le/c/a/a/a0/g;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Le/c/a/a/z/e;->n:F

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/l/g;FFF)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    aput p3, v1, v4

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v0, "scale"

    invoke-virtual {p1, v0}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Le/c/a/a/z/f;

    invoke-direct {v1, p0}, Le/c/a/a/z/f;-><init>(Le/c/a/a/z/e;)V

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 2
    :goto_0
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v2, [F

    aput p3, v5, v4

    invoke-static {p2, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, v0}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p3

    invoke-virtual {p3, p2}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    .line 3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq p3, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Le/c/a/a/z/f;

    invoke-direct {p3, p0}, Le/c/a/a/z/f;-><init>(Le/c/a/a/z/e;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 4
    :goto_1
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Le/c/a/a/z/e;->y:Landroid/graphics/Matrix;

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object p2, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p2, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Le/c/a/a/l/e;

    invoke-direct {p3}, Le/c/a/a/l/e;-><init>()V

    new-instance v0, Le/c/a/a/z/e$a;

    invoke-direct {v0, p0}, Le/c/a/a/z/e$a;-><init>(Le/c/a/a/z/e;)V

    new-array v1, v2, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Le/c/a/a/z/e;->y:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v4

    invoke-static {p2, p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    invoke-virtual {p1, p3}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, p4}, Ld/b/k/m$i;->U0(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final b(Le/c/a/a/z/e$h;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Le/c/a/a/z/e;->A:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public abstract c()F
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 5

    iget-boolean v0, p0, Le/c/a/a/z/e;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    :cond_0
    iget-boolean v0, p0, Le/c/a/a/z/e;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/c/a/a/z/e;->c()F

    move-result v0

    iget v2, p0, Le/c/a/a/z/e;->g:F

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v0, v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public e()Z
    .locals 4

    iget-object v0, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Le/c/a/a/z/e;->p:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Le/c/a/a/z/e;->p:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public f()Z
    .locals 4

    iget-object v0, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Le/c/a/a/z/e;->p:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Le/c/a/a/z/e;->p:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i([I)V
.end method

.method public abstract j(FFF)V
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Le/c/a/a/z/e;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/a/a/z/e$e;

    invoke-interface {v1}, Le/c/a/a/z/e$e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Le/c/a/a/z/e;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/a/a/z/e$e;

    invoke-interface {v1}, Le/c/a/a/z/e$e;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract m()Z
.end method

.method public final n(F)V
    .locals 1

    iput p1, p0, Le/c/a/a/z/e;->o:F

    iget-object p1, p0, Le/c/a/a/z/e;->y:Landroid/graphics/Matrix;

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public abstract o(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract p()Z
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Ld/h/l/p;->I(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Le/c/a/a/z/e;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/c/a/a/z/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract s()V
.end method

.method public final t()V
    .locals 9

    iget-object v0, p0, Le/c/a/a/z/e;->v:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Le/c/a/a/z/e;->d(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    const-string v2, "Didn\'t initialize content background"

    .line 1
    invoke-static {v1, v2}, Ld/b/k/m$i;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Le/c/a/a/z/e;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v3, p0, Le/c/a/a/z/e;->u:Le/c/a/a/e0/b;

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    if-eqz v3, :cond_0

    .line 2
    iget-object v1, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    throw v1

    .line 3
    :cond_1
    iget-object v2, p0, Le/c/a/a/z/e;->u:Le/c/a/a/e0/b;

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    if-eqz v2, :cond_2

    .line 4
    :goto_0
    iget-object v1, p0, Le/c/a/a/z/e;->u:Le/c/a/a/e0/b;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 5
    iget-object v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    iget v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:I

    add-int/2addr v2, v5

    add-int/2addr v3, v5

    add-int/2addr v4, v5

    add-int/2addr v0, v5

    .line 7
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    return-void

    .line 8
    :cond_2
    throw v1
.end method
