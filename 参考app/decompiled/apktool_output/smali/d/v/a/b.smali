.class public Ld/v/a/b;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/v/a/b$k;,
        Ld/v/a/b$f;,
        Ld/v/a/b$i;,
        Ld/v/a/b$g;,
        Ld/v/a/b$j;,
        Ld/v/a/b$d;,
        Ld/v/a/b$h;,
        Ld/v/a/b$e;
    }
.end annotation


# static fields
.field public static final c0:[I

.field public static final d0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ld/v/a/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public static final e0:Landroid/view/animation/Interpolator;

.field public static final f0:Ld/v/a/b$k;


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public D:I

.field public E:I

.field public F:I

.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field public K:I

.field public L:Landroid/view/VelocityTracker;

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Landroid/widget/EdgeEffect;

.field public R:Landroid/widget/EdgeEffect;

.field public S:Z

.field public T:Z

.field public U:I

.field public V:Ld/v/a/b$h;

.field public W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final a0:Ljava/lang/Runnable;

.field public b0:I

.field public e:I

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/v/a/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ld/v/a/b$e;

.field public final h:Landroid/graphics/Rect;

.field public i:Ld/v/a/a;

.field public j:I

.field public k:I

.field public l:Landroid/os/Parcelable;

.field public m:Ljava/lang/ClassLoader;

.field public n:Landroid/widget/Scroller;

.field public o:Z

.field public p:Ld/v/a/b$i;

.field public q:I

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:I

.field public t:I

.field public u:F

.field public v:F

.field public w:I

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Ld/v/a/b;->c0:[I

    new-instance v0, Ld/v/a/b$a;

    invoke-direct {v0}, Ld/v/a/b$a;-><init>()V

    sput-object v0, Ld/v/a/b;->d0:Ljava/util/Comparator;

    new-instance v0, Ld/v/a/b$b;

    invoke-direct {v0}, Ld/v/a/b$b;-><init>()V

    sput-object v0, Ld/v/a/b;->e0:Landroid/view/animation/Interpolator;

    new-instance v0, Ld/v/a/b$k;

    invoke-direct {v0}, Ld/v/a/b$k;-><init>()V

    sput-object v0, Ld/v/a/b;->f0:Ld/v/a/b$k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    new-instance p1, Ld/v/a/b$e;

    invoke-direct {p1}, Ld/v/a/b$e;-><init>()V

    iput-object p1, p0, Ld/v/a/b;->g:Ld/v/a/b$e;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ld/v/a/b;->h:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Ld/v/a/b;->k:I

    const/4 p2, 0x0

    iput-object p2, p0, Ld/v/a/b;->l:Landroid/os/Parcelable;

    iput-object p2, p0, Ld/v/a/b;->m:Ljava/lang/ClassLoader;

    const p2, -0x800001

    iput p2, p0, Ld/v/a/b;->u:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Ld/v/a/b;->v:F

    const/4 p2, 0x1

    iput p2, p0, Ld/v/a/b;->A:I

    iput p1, p0, Ld/v/a/b;->K:I

    iput-boolean p2, p0, Ld/v/a/b;->S:Z

    new-instance p1, Ld/v/a/b$c;

    invoke-direct {p1, p0}, Ld/v/a/b$c;-><init>(Ld/v/a/b;)V

    iput-object p1, p0, Ld/v/a/b;->a0:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput p1, p0, Ld/v/a/b;->b0:I

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 p1, 0x40000

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Ld/v/a/b;->e0:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Ld/v/a/b;->F:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Ld/v/a/b;->M:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Ld/v/a/b;->N:I

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld/v/a/b;->Q:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld/v/a/b;->R:Landroid/widget/EdgeEffect;

    const/high16 p1, 0x41c80000    # 25.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Ld/v/a/b;->O:I

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Ld/v/a/b;->P:I

    const/high16 p1, 0x41800000    # 16.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    iput p1, p0, Ld/v/a/b;->D:I

    new-instance p1, Ld/v/a/b$g;

    invoke-direct {p1, p0}, Ld/v/a/b$g;-><init>(Ld/v/a/b;)V

    invoke-static {p0, p1}, Ld/h/l/p;->a0(Landroid/view/View;Ld/h/l/a;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 4
    :cond_0
    new-instance p1, Ld/v/a/c;

    invoke-direct {p1, p0}, Ld/v/a/c;-><init>(Ld/v/a/b;)V

    invoke-static {p0, p1}, Ld/h/l/p;->i0(Landroid/view/View;Ld/h/l/j;)V

    return-void
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Ld/v/a/b;->y:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Ld/v/a/b;->y:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)Ld/v/a/b$e;
    .locals 5

    new-instance v0, Ld/v/a/b$e;

    invoke-direct {v0}, Ld/v/a/b$e;-><init>()V

    iput p1, v0, Ld/v/a/b$e;->b:I

    iget-object v1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1
    check-cast v1, Le/b/b/o/r$b;

    .line 2
    iget-object v3, v1, Le/b/b/o/r$b;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, v1, Le/b/b/o/r$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iput-object p1, v0, Ld/v/a/b$e;->a:Ljava/lang/Object;

    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Ld/v/a/b$e;->d:F

    if-ltz p2, :cond_1

    iget-object p1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0

    .line 4
    :cond_2
    throw v2

    .line 5
    :cond_3
    throw v2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Ld/v/a/b;->h(Landroid/view/View;)Ld/v/a/b$e;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Ld/v/a/b$e;->b:I

    iget v5, p0, Ld/v/a/b;->j:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ld/v/a/b;->h(Landroid/view/View;)Ld/v/a/b$e;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Ld/v/a/b$e;->b:I

    iget v3, p0, Ld/v/a/b;->j:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0, p3}, Ld/v/a/b;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Ld/v/a/b;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Ld/v/a/b$f;

    iget-boolean v1, v0, Ld/v/a/b$f;->a:Z

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ld/v/a/b$d;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    .line 2
    iput-boolean v1, v0, Ld/v/a/b$f;->a:Z

    iget-boolean v2, p0, Ld/v/a/b;->x:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    iput-boolean v3, v0, Ld/v/a/b$f;->d:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public b(I)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v0, v3

    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_7

    if-eq v3, v0, :cond_7

    if-ne p1, v5, :cond_5

    iget-object v1, p0, Ld/v/a/b;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Ld/v/a/b;->g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Ld/v/a/b;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0}, Ld/v/a/b;->g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6

    if-lt v1, v2, :cond_6

    invoke-virtual {p0}, Ld/v/a/b;->m()Z

    move-result v0

    goto :goto_4

    :cond_5
    if-ne p1, v4, :cond_b

    iget-object v1, p0, Ld/v/a/b;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Ld/v/a/b;->g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Ld/v/a/b;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0}, Ld/v/a/b;->g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6

    if-gt v1, v2, :cond_6

    invoke-virtual {p0}, Ld/v/a/b;->n()Z

    move-result v0

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_6

    :cond_7
    if-eq p1, v5, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_5

    :cond_8
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    :cond_9
    invoke-virtual {p0}, Ld/v/a/b;->n()Z

    move-result v2

    goto :goto_6

    :cond_a
    :goto_5
    invoke-virtual {p0}, Ld/v/a/b;->m()Z

    move-result v2

    :cond_b
    :goto_6
    if-eqz v2, :cond_c

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_c
    return v2
.end method

.method public c(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Ld/v/a/b;->c(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget v0, p0, Ld/v/a/b;->u:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget v0, p0, Ld/v/a/b;->v:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Ld/v/a/b$f;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/v/a/b;->o:Z

    iget-object v1, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget-object v2, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0, v2}, Ld/v/a/b;->o(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Ld/h/l/p;->S(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Ld/v/a/b;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 7

    iget v0, p0, Ld/v/a/b;->b0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Ld/v/a/b;->setScrollingCacheEnabled(Z)V

    iget-object v3, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget-object v5, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v5, v3, :cond_2

    invoke-virtual {p0, v5}, Ld/v/a/b;->o(I)Z

    :cond_2
    iput-boolean v2, p0, Ld/v/a/b;->z:Z

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/v/a/b$e;

    iget-boolean v5, v4, Ld/v/a/b$e;->c:Z

    if-eqz v5, :cond_3

    iput-boolean v2, v4, Ld/v/a/b$e;->c:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Ld/v/a/b;->a0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Ld/h/l/p;->T(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Ld/v/a/b;->a0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    const/4 v4, 0x2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Ld/v/a/b;->b(I)Z

    move-result p1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2}, Ld/v/a/b;->b(I)Z

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ld/v/a/b;->n()Z

    move-result p1

    goto :goto_2

    :cond_3
    const/16 p1, 0x42

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ld/v/a/b;->m()Z

    move-result p1

    goto :goto_2

    :cond_5
    const/16 p1, 0x11

    :goto_0
    invoke-virtual {p0, p1}, Ld/v/a/b;->b(I)Z

    move-result p1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Ld/v/a/b;->h(Landroid/view/View;)Ld/v/a/b$e;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Ld/v/a/b$e;->b:I

    iget v5, p0, Ld/v/a/b;->j:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/v/a/a;->b()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld/v/a/b;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p1, p0, Ld/v/a/b;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Ld/v/a/b;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    iget v5, p0, Ld/v/a/b;->u:F

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Ld/v/a/b;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Ld/v/a/b;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Ld/v/a/b;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Ld/v/a/b;->v:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Ld/v/a/b;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Ld/v/a/b;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-static {p0}, Ld/h/l/p;->S(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Ld/v/a/b;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    invoke-virtual {v0}, Ld/v/a/a;->b()I

    move-result v0

    iput v0, p0, Ld/v/a/b;->e:I

    iget-object v1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Ld/v/a/b;->A:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ld/v/a/b;->j:I

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/v/a/b$e;

    iget-object v6, p0, Ld/v/a/b;->i:Ld/v/a/a;

    iget-object v5, v5, Ld/v/a/b$e;->a:Ljava/lang/Object;

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1
    throw v0

    .line 2
    :cond_2
    iget-object v2, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    sget-object v5, Ld/v/a/b;->d0:Ljava/util/Comparator;

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ld/v/a/b$f;

    iget-boolean v6, v5, Ld/v/a/b$f;->a:Z

    if-nez v6, :cond_3

    const/4 v6, 0x0

    iput v6, v5, Ld/v/a/b$f;->c:F

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3
    :cond_4
    invoke-virtual {p0, v1, v4, v3, v4}, Ld/v/a/b;->v(IZZI)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_5
    return-void
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Ld/v/a/b;->V:Ld/v/a/b$h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ld/v/a/b$h;->c(I)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Ld/v/a/b$f;

    invoke-direct {v0}, Ld/v/a/b$f;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Ld/v/a/b$f;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ld/v/a/b$f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Ld/v/a/b;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Ld/v/a/a;
    .locals 1

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 0

    iget-object p1, p0, Ld/v/a/b;->W:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ld/v/a/b$f;

    iget p1, p1, Ld/v/a/b$f;->f:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Ld/v/a/b;->j:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Ld/v/a/b;->A:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Ld/v/a/b;->q:I

    return v0
.end method

.method public h(Landroid/view/View;)Ld/v/a/b$e;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/v/a/b$e;

    iget-object v4, p0, Ld/v/a/b;->i:Ld/v/a/a;

    iget-object v5, v2, Ld/v/a/b$e;->a:Ljava/lang/Object;

    check-cast v4, Le/b/b/o/r$b;

    if-eqz v4, :cond_2

    if-ne p1, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1
    :cond_2
    throw v3

    :cond_3
    return-object v3
.end method

.method public final i()Ld/v/a/b$e;
    .locals 13

    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget v3, p0, Ld/v/a/b;->q:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v9, v4

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_2
    iget-object v11, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_8

    iget-object v11, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ld/v/a/b$e;

    if-nez v10, :cond_3

    iget v12, v11, Ld/v/a/b$e;->b:I

    add-int/2addr v7, v6

    if-eq v12, v7, :cond_3

    iget-object v11, p0, Ld/v/a/b;->g:Ld/v/a/b$e;

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    iput v1, v11, Ld/v/a/b$e;->e:F

    iput v7, v11, Ld/v/a/b$e;->b:I

    iget-object v1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v11, Ld/v/a/b$e;->d:F

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1
    :cond_2
    throw v4

    .line 2
    :cond_3
    :goto_3
    iget v1, v11, Ld/v/a/b$e;->e:F

    iget v5, v11, Ld/v/a/b$e;->d:F

    add-float/2addr v5, v1

    add-float/2addr v5, v3

    if-nez v10, :cond_5

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_4

    goto :goto_4

    :cond_4
    return-object v9

    :cond_5
    :goto_4
    cmpg-float v5, v2, v5

    if-ltz v5, :cond_7

    iget-object v5, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne v8, v5, :cond_6

    goto :goto_5

    :cond_6
    iget v7, v11, Ld/v/a/b$e;->b:I

    iget v5, v11, Ld/v/a/b$e;->d:F

    add-int/lit8 v8, v8, 0x1

    move-object v9, v11

    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    :goto_5
    return-object v11

    :cond_8
    return-object v9
.end method

.method public j(I)Ld/v/a/b$e;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/v/a/b$e;

    iget v2, v1, Ld/v/a/b$e;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(IFI)V
    .locals 11

    iget v0, p0, Ld/v/a/b;->U:I

    const/4 v1, 0x1

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Ld/v/a/b$f;

    iget-boolean v9, v8, Ld/v/a/b$f;->a:Z

    if-nez v9, :cond_0

    goto :goto_3

    :cond_0
    iget v8, v8, Ld/v/a/b$f;->b:I

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v1, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    sub-int v8, v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    move v10, v8

    move v8, v2

    move v2, v10

    :goto_2
    add-int/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_4

    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v2, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1
    :cond_5
    iget-object v0, p0, Ld/v/a/b;->V:Ld/v/a/b$h;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2, p3}, Ld/v/a/b$h;->a(IFI)V

    .line 2
    :cond_6
    iput-boolean v1, p0, Ld/v/a/b;->T:Z

    return-void
.end method

.method public final l(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Ld/v/a/b;->K:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Ld/v/a/b;->G:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Ld/v/a/b;->K:I

    iget-object p1, p0, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public m()Z
    .locals 3

    iget v0, p0, Ld/v/a/b;->j:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 1
    iput-boolean v1, p0, Ld/v/a/b;->z:Z

    .line 2
    invoke-virtual {p0, v0, v2, v1, v1}, Ld/v/a/b;->v(IZZI)V

    return v2

    :cond_0
    return v1
.end method

.method public n()Z
    .locals 4

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Ld/v/a/b;->j:I

    invoke-virtual {v0}, Ld/v/a/a;->b()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_0

    iget v0, p0, Ld/v/a/b;->j:I

    add-int/2addr v0, v3

    .line 1
    iput-boolean v1, p0, Ld/v/a/b;->z:Z

    .line 2
    invoke-virtual {p0, v0, v3, v1, v1}, Ld/v/a/b;->v(IZZI)V

    return v3

    :cond_0
    return v1
.end method

.method public final o(I)Z
    .locals 7

    iget-object v0, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Ld/v/a/b;->S:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    iput-boolean v2, p0, Ld/v/a/b;->T:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Ld/v/a/b;->k(IFI)V

    iget-boolean p1, p0, Ld/v/a/b;->T:Z

    if-eqz p1, :cond_1

    return v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Ld/v/a/b;->i()Ld/v/a/b$e;

    move-result-object v0

    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result v3

    iget v4, p0, Ld/v/a/b;->q:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v6, v0, Ld/v/a/b$e;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Ld/v/a/b$e;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Ld/v/a/b$e;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Ld/v/a/b;->T:Z

    invoke-virtual {p0, v6, p1, v0}, Ld/v/a/b;->k(IFI)V

    iget-boolean p1, p0, Ld/v/a/b;->T:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/v/a/b;->S:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Ld/v/a/b;->a0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Ld/v/a/b;->q:I

    if-lez v1, :cond_5

    iget-object v1, v0, Ld/v/a/b;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v3, v0, Ld/v/a/b;->q:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/v/a/b$e;

    iget v7, v5, Ld/v/a/b$e;->e:F

    iget-object v8, v0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Ld/v/a/b$e;->b:I

    iget-object v10, v0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld/v/a/b$e;

    iget v10, v10, Ld/v/a/b$e;->b:I

    :goto_0
    if-ge v9, v10, :cond_5

    :goto_1
    iget v11, v5, Ld/v/a/b$e;->b:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    iget-object v5, v0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/v/a/b$e;

    goto :goto_1

    :cond_0
    iget v11, v5, Ld/v/a/b$e;->b:I

    if-ne v9, v11, :cond_1

    iget v7, v5, Ld/v/a/b$e;->e:F

    iget v11, v5, Ld/v/a/b$e;->d:F

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    :cond_1
    iget-object v11, v0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v11, :cond_4

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v11, v7

    move v7, v11

    :goto_2
    iget v11, v0, Ld/v/a/b;->q:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_2

    iget-object v11, v0, Ld/v/a/b;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Ld/v/a/b;->s:I

    iget v15, v0, Ld/v/a/b;->q:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Ld/v/a/b;->t:I

    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Ld/v/a/b;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 1
    throw v1

    :cond_5
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v1, v6, Ld/v/a/b;->B:Z

    if-eqz v1, :cond_1

    return v9

    :cond_1
    iget-boolean v1, v6, Ld/v/a/b;->C:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p1}, Ld/v/a/b;->l(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_4
    iget v0, v6, Ld/v/a/b;->K:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v1, v6, Ld/v/a/b;->G:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    iget v0, v6, Ld/v/a/b;->J:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_9

    iget v2, v6, Ld/v/a/b;->G:F

    .line 1
    iget v3, v6, Ld/v/a/b;->E:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6

    if-gtz v14, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, v6, Ld/v/a/b;->E:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    cmpg-float v0, v1, v0

    if-gez v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_9

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Ld/v/a/b;->c(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_9

    iput v10, v6, Ld/v/a/b;->G:F

    iput v12, v6, Ld/v/a/b;->H:F

    iput-boolean v9, v6, Ld/v/a/b;->C:Z

    return v8

    :cond_9
    iget v0, v6, Ld/v/a/b;->F:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v11, v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_b

    iput-boolean v9, v6, Ld/v/a/b;->B:Z

    invoke-virtual {p0, v9}, Ld/v/a/b;->s(Z)V

    invoke-virtual {p0, v9}, Ld/v/a/b;->setScrollState(I)V

    iget v0, v6, Ld/v/a/b;->I:F

    iget v1, v6, Ld/v/a/b;->F:I

    int-to-float v1, v1

    if-lez v14, :cond_a

    add-float/2addr v0, v1

    goto :goto_1

    :cond_a
    sub-float/2addr v0, v1

    :goto_1
    iput v0, v6, Ld/v/a/b;->G:F

    iput v12, v6, Ld/v/a/b;->H:F

    invoke-direct {p0, v9}, Ld/v/a/b;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    :cond_b
    iget v0, v6, Ld/v/a/b;->F:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_c

    iput-boolean v9, v6, Ld/v/a/b;->C:Z

    :cond_c
    :goto_2
    iget-boolean v0, v6, Ld/v/a/b;->B:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, v10}, Ld/v/a/b;->p(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Ld/h/l/p;->S(Landroid/view/View;)V

    goto :goto_3

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Ld/v/a/b;->I:F

    iput v0, v6, Ld/v/a/b;->G:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Ld/v/a/b;->J:F

    iput v0, v6, Ld/v/a/b;->H:F

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Ld/v/a/b;->K:I

    iput-boolean v8, v6, Ld/v/a/b;->C:Z

    iput-boolean v9, v6, Ld/v/a/b;->o:Z

    iget-object v0, v6, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, v6, Ld/v/a/b;->b0:I

    if-ne v0, v1, :cond_e

    iget-object v0, v6, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Ld/v/a/b;->P:I

    if-le v0, v1, :cond_e

    iget-object v0, v6, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v8, v6, Ld/v/a/b;->z:Z

    .line 3
    iget v0, v6, Ld/v/a/b;->j:I

    invoke-virtual {p0, v0}, Ld/v/a/b;->q(I)V

    .line 4
    iput-boolean v9, v6, Ld/v/a/b;->B:Z

    invoke-virtual {p0, v9}, Ld/v/a/b;->s(Z)V

    invoke-virtual {p0, v9}, Ld/v/a/b;->setScrollState(I)V

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v8}, Ld/v/a/b;->d(Z)V

    iput-boolean v8, v6, Ld/v/a/b;->B:Z

    :cond_f
    :goto_3
    iget-object v0, v6, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    :cond_10
    iget-object v0, v6, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Ld/v/a/b;->B:Z

    return v0

    :cond_11
    :goto_4
    invoke-virtual {p0}, Ld/v/a/b;->t()Z

    return v8
.end method

.method public onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Ld/v/a/b$f;

    iget-boolean v14, v12, Ld/v/a/b$f;->a:Z

    if-eqz v14, :cond_6

    iget v12, v12, Ld/v/a/b$f;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v16, v5

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Ld/v/a/b$f;

    iget-boolean v10, v9, Ld/v/a/b$f;->a:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Ld/v/a/b;->h(Landroid/view/View;)Ld/v/a/b$e;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    iget v10, v10, Ld/v/a/b$e;->e:F

    mul-float v10, v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    iget-boolean v14, v9, Ld/v/a/b$f;->d:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    iput-boolean v14, v9, Ld/v/a/b$f;->d:Z

    iget v9, v9, Ld/v/a/b$f;->c:F

    mul-float v13, v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iput v5, v0, Ld/v/a/b;->s:I

    sub-int/2addr v3, v7

    iput v3, v0, Ld/v/a/b;->t:I

    iput v11, v0, Ld/v/a/b;->U:I

    iget-boolean v1, v0, Ld/v/a/b;->S:Z

    if-eqz v1, :cond_b

    iget v1, v0, Ld/v/a/b;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Ld/v/a/b;->u(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Ld/v/a/b;->S:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Ld/v/a/b;->D:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Ld/v/a/b;->E:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ld/v/a/b$f;

    if-eqz v3, :cond_b

    iget-boolean v7, v3, Ld/v/a/b$f;->a:Z

    if-eqz v7, :cond_b

    iget v7, v3, Ld/v/a/b$f;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_5

    :cond_5
    :goto_4
    const/high16 v9, -0x80000000

    :goto_5
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_6

    :cond_6
    move v10, p1

    :goto_6
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_7

    :cond_7
    move v10, p1

    :goto_7
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_8

    :cond_8
    move v3, p2

    goto :goto_8

    :cond_9
    move v3, p2

    move v5, v9

    :goto_8
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_9

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Ld/v/a/b;->w:I

    iput-boolean v4, p0, Ld/v/a/b;->x:Z

    .line 1
    iget p2, p0, Ld/v/a/b;->j:I

    invoke-virtual {p0, p2}, Ld/v/a/b;->q(I)V

    .line 2
    iput-boolean v0, p0, Ld/v/a/b;->x:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_a
    if-ge v0, p2, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Ld/v/a/b$f;

    if-eqz v2, :cond_d

    iget-boolean v4, v2, Ld/v/a/b$f;->a:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p1

    iget v2, v2, Ld/v/a/b$f;->c:F

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, p0, Ld/v/a/b;->w:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Ld/v/a/b;->h(Landroid/view/View;)Ld/v/a/b$e;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Ld/v/a/b$e;->b:I

    iget v7, p0, Ld/v/a/b;->j:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Ld/v/a/b$j;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Ld/v/a/b$j;

    .line 1
    iget-object v0, p1, Ld/j/a/a;->e:Landroid/os/Parcelable;

    .line 2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v0, :cond_1

    check-cast v0, Le/b/b/o/r$b;

    iget p1, p1, Ld/v/a/b$j;->g:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0, v1}, Ld/v/a/b;->v(IZZI)V

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p1, Ld/v/a/b$j;->g:I

    iput v0, p0, Ld/v/a/b;->k:I

    iget-object v0, p1, Ld/v/a/b$j;->h:Landroid/os/Parcelable;

    iput-object v0, p0, Ld/v/a/b;->l:Landroid/os/Parcelable;

    iget-object p1, p1, Ld/v/a/b$j;->i:Ljava/lang/ClassLoader;

    iput-object p1, p0, Ld/v/a/b;->m:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Ld/v/a/b$j;

    invoke-direct {v1, v0}, Ld/v/a/b$j;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Ld/v/a/b;->j:I

    iput v0, v1, Ld/v/a/b$j;->g:I

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v0, :cond_1

    check-cast v0, Le/b/b/o/r$b;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object v2, v1, Ld/v/a/b$j;->h:Landroid/os/Parcelable;

    goto :goto_0

    .line 1
    :cond_0
    throw v2

    :cond_1
    :goto_0
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Ld/v/a/b;->q:I

    invoke-virtual {p0, p1, p3, p2, p2}, Ld/v/a/b;->r(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ld/v/a/a;->b()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    const/4 v3, -0x1

    if-eq v0, v2, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0, p1}, Ld/v/a/b;->l(Landroid/view/MotionEvent;)V

    iget v0, p0, Ld/v/a/b;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Ld/v/a/b;->G:F

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Ld/v/a/b;->G:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    goto/16 :goto_4

    :cond_5
    iget-boolean p1, p0, Ld/v/a/b;->B:Z

    if-eqz p1, :cond_10

    iget p1, p0, Ld/v/a/b;->j:I

    invoke-virtual {p0, p1, v2, v1, v1}, Ld/v/a/b;->u(IZIZ)V

    goto/16 :goto_3

    :cond_6
    iget-boolean v0, p0, Ld/v/a/b;->B:Z

    if-nez v0, :cond_9

    iget v0, p0, Ld/v/a/b;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Ld/v/a/b;->G:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v5, p0, Ld/v/a/b;->H:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Ld/v/a/b;->F:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_9

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    iput-boolean v2, p0, Ld/v/a/b;->B:Z

    invoke-virtual {p0, v2}, Ld/v/a/b;->s(Z)V

    iget v4, p0, Ld/v/a/b;->I:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    iget v3, p0, Ld/v/a/b;->F:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_8
    iget v3, p0, Ld/v/a/b;->F:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Ld/v/a/b;->G:F

    iput v0, p0, Ld/v/a/b;->H:F

    invoke-virtual {p0, v2}, Ld/v/a/b;->setScrollState(I)V

    invoke-direct {p0, v2}, Ld/v/a/b;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    iget-boolean v0, p0, Ld/v/a/b;->B:Z

    if-eqz v0, :cond_10

    iget v0, p0, Ld/v/a/b;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p0, p1}, Ld/v/a/b;->p(F)Z

    move-result p1

    or-int/2addr v1, p1

    goto/16 :goto_5

    :cond_a
    iget-boolean v0, p0, Ld/v/a/b;->B:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Ld/v/a/b;->N:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v4, p0, Ld/v/a/b;->K:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v2, p0, Ld/v/a/b;->z:Z

    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Ld/v/a/b;->i()Ld/v/a/b$e;

    move-result-object v6

    iget v7, p0, Ld/v/a/b;->q:I

    int-to-float v7, v7

    int-to-float v4, v4

    div-float/2addr v7, v4

    iget v8, v6, Ld/v/a/b$e;->b:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v4, v6, Ld/v/a/b$e;->e:F

    sub-float/2addr v5, v4

    iget v4, v6, Ld/v/a/b$e;->d:F

    add-float/2addr v4, v7

    div-float/2addr v5, v4

    iget v4, p0, Ld/v/a/b;->K:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v4, p0, Ld/v/a/b;->I:F

    sub-float/2addr p1, v4

    float-to-int p1, p1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Ld/v/a/b;->O:I

    if-le p1, v4, :cond_c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Ld/v/a/b;->M:I

    if-le p1, v4, :cond_c

    if-lez v0, :cond_b

    goto :goto_2

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_c
    iget p1, p0, Ld/v/a/b;->j:I

    if-lt v8, p1, :cond_d

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_d
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    add-float/2addr v5, p1

    float-to-int p1, v5

    add-int/2addr v8, p1

    :goto_2
    iget-object p1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_e

    iget-object p1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/v/a/b$e;

    iget-object v1, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/v/a/b$e;

    iget p1, p1, Ld/v/a/b$e;->b:I

    iget v1, v1, Ld/v/a/b$e;->b:I

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2
    :cond_e
    invoke-virtual {p0, v8, v2, v2, v0}, Ld/v/a/b;->v(IZZI)V

    :goto_3
    invoke-virtual {p0}, Ld/v/a/b;->t()Z

    move-result v1

    goto :goto_5

    :cond_f
    iget-object v0, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Ld/v/a/b;->z:Z

    .line 3
    iget v0, p0, Ld/v/a/b;->j:I

    invoke-virtual {p0, v0}, Ld/v/a/b;->q(I)V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ld/v/a/b;->I:F

    iput v0, p0, Ld/v/a/b;->G:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Ld/v/a/b;->J:F

    iput v0, p0, Ld/v/a/b;->H:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    :goto_4
    iput p1, p0, Ld/v/a/b;->K:I

    :cond_10
    :goto_5
    if-eqz v1, :cond_11

    invoke-static {p0}, Ld/h/l/p;->S(Landroid/view/View;)V

    :cond_11
    return v2

    :cond_12
    :goto_6
    return v1
.end method

.method public final p(F)Z
    .locals 9

    iget v0, p0, Ld/v/a/b;->G:F

    sub-float/2addr v0, p1

    iput p1, p0, Ld/v/a/b;->G:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ld/v/a/b;->u:F

    mul-float v1, v1, v0

    iget v2, p0, Ld/v/a/b;->v:F

    mul-float v2, v2, v0

    iget-object v3, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/v/a/b$e;

    iget-object v5, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/v/a/b$e;

    iget v6, v3, Ld/v/a/b$e;->b:I

    if-eqz v6, :cond_0

    iget v1, v3, Ld/v/a/b$e;->e:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget v6, v5, Ld/v/a/b$e;->b:I

    iget-object v8, p0, Ld/v/a/b;->i:Ld/v/a/a;

    invoke-virtual {v8}, Ld/v/a/a;->b()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    iget v2, v5, Ld/v/a/b$e;->e:F

    mul-float v2, v2, v0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    iget-object v2, p0, Ld/v/a/b;->Q:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    iget-object v1, p0, Ld/v/a/b;->R:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_4
    move p1, v2

    :cond_5
    :goto_2
    iget v0, p0, Ld/v/a/b;->G:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr p1, v0

    iput p1, p0, Ld/v/a/b;->G:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0, v1}, Ld/v/a/b;->o(I)Z

    return v4
.end method

.method public q(I)V
    .locals 14

    iget v0, p0, Ld/v/a/b;->j:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v0}, Ld/v/a/b;->j(I)Ld/v/a/b$e;

    move-result-object v0

    iput p1, p0, Ld/v/a/b;->j:I

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Ld/v/a/b;->z:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz p1, :cond_36

    iget p1, p0, Ld/v/a/b;->A:I

    iget v2, p0, Ld/v/a/b;->j:I

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Ld/v/a/b;->i:Ld/v/a/a;

    invoke-virtual {v3}, Ld/v/a/a;->b()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    iget v5, p0, Ld/v/a/b;->j:I

    add-int/2addr v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v4, p0, Ld/v/a/b;->e:I

    if-ne v3, v4, :cond_35

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/v/a/b$e;

    iget v6, v5, Ld/v/a/b$e;->b:I

    iget v7, p0, Ld/v/a/b;->j:I

    if-lt v6, v7, :cond_4

    if-ne v6, v7, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v5, v1

    :goto_2
    if-nez v5, :cond_6

    if-lez v3, :cond_6

    iget v5, p0, Ld/v/a/b;->j:I

    invoke-virtual {p0, v5, v4}, Ld/v/a/b;->a(II)Ld/v/a/b$e;

    move-result-object v5

    :cond_6
    if-eqz v5, :cond_2b

    add-int/lit8 v6, v4, -0x1

    if-ltz v6, :cond_7

    iget-object v7, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/v/a/b$e;

    goto :goto_3

    :cond_7
    move-object v7, v1

    :goto_3
    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-gtz v8, :cond_8

    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    iget v10, v5, Ld/v/a/b$e;->d:F

    sub-float v10, v9, v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v8

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    :goto_4
    iget v11, p0, Ld/v/a/b;->j:I

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    :goto_5
    if-ltz v11, :cond_e

    cmpl-float v13, v12, v10

    if-ltz v13, :cond_a

    if-ge v11, v2, :cond_a

    if-nez v7, :cond_9

    goto :goto_8

    :cond_9
    iget v13, v7, Ld/v/a/b$e;->b:I

    if-ne v11, v13, :cond_d

    iget-boolean v13, v7, Ld/v/a/b$e;->c:Z

    if-nez v13, :cond_d

    iget-object v13, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v13, p0, Ld/v/a/b;->i:Ld/v/a/a;

    iget-object v7, v7, Ld/v/a/b$e;->a:Ljava/lang/Object;

    invoke-virtual {v13, p0, v11, v7}, Ld/v/a/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v4, v4, -0x1

    if-ltz v6, :cond_c

    goto :goto_6

    :cond_a
    if-eqz v7, :cond_b

    iget v13, v7, Ld/v/a/b$e;->b:I

    if-ne v11, v13, :cond_b

    iget v7, v7, Ld/v/a/b$e;->d:F

    add-float/2addr v12, v7

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_c

    goto :goto_6

    :cond_b
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v11, v7}, Ld/v/a/b;->a(II)Ld/v/a/b$e;

    move-result-object v7

    iget v7, v7, Ld/v/a/b$e;->d:F

    add-float/2addr v12, v7

    add-int/lit8 v4, v4, 0x1

    if-ltz v6, :cond_c

    :goto_6
    iget-object v7, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/v/a/b$e;

    goto :goto_7

    :cond_c
    move-object v7, v1

    :cond_d
    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_e
    :goto_8
    iget v2, v5, Ld/v/a/b$e;->d:F

    add-int/lit8 v6, v4, 0x1

    cmpg-float v7, v2, v9

    if-gez v7, :cond_16

    iget-object v7, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    iget-object v7, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/v/a/b$e;

    goto :goto_9

    :cond_f
    move-object v7, v1

    :goto_9
    if-gtz v8, :cond_10

    const/4 v8, 0x0

    goto :goto_a

    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v8, v8

    div-float/2addr v10, v8

    add-float v8, v10, v9

    :goto_a
    iget v9, p0, Ld/v/a/b;->j:I

    add-int/lit8 v9, v9, 0x1

    move v10, v6

    :goto_b
    if-ge v9, v3, :cond_16

    cmpl-float v11, v2, v8

    if-ltz v11, :cond_12

    if-le v9, p1, :cond_12

    if-nez v7, :cond_11

    goto :goto_e

    :cond_11
    iget v11, v7, Ld/v/a/b$e;->b:I

    if-ne v9, v11, :cond_15

    iget-boolean v11, v7, Ld/v/a/b$e;->c:Z

    if-nez v11, :cond_15

    iget-object v11, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v11, p0, Ld/v/a/b;->i:Ld/v/a/a;

    iget-object v7, v7, Ld/v/a/b$e;->a:Ljava/lang/Object;

    invoke-virtual {v11, p0, v9, v7}, Ld/v/a/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v7, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_14

    goto :goto_c

    :cond_12
    if-eqz v7, :cond_13

    iget v11, v7, Ld/v/a/b$e;->b:I

    if-ne v9, v11, :cond_13

    iget v7, v7, Ld/v/a/b$e;->d:F

    add-float/2addr v2, v7

    add-int/lit8 v10, v10, 0x1

    iget-object v7, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_14

    goto :goto_c

    :cond_13
    invoke-virtual {p0, v9, v10}, Ld/v/a/b;->a(II)Ld/v/a/b$e;

    move-result-object v7

    add-int/lit8 v10, v10, 0x1

    iget v7, v7, Ld/v/a/b$e;->d:F

    add-float/2addr v2, v7

    iget-object v7, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_14

    :goto_c
    iget-object v7, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/v/a/b$e;

    goto :goto_d

    :cond_14
    move-object v7, v1

    :cond_15
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1
    :cond_16
    :goto_e
    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    invoke-virtual {p1}, Ld/v/a/a;->b()I

    move-result p1

    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result v2

    if-lez v2, :cond_17

    iget v3, p0, Ld/v/a/b;->q:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    :goto_f
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1f

    iget v7, v0, Ld/v/a/b$e;->b:I

    iget v8, v5, Ld/v/a/b$e;->b:I

    if-ge v7, v8, :cond_1b

    iget v8, v0, Ld/v/a/b$e;->e:F

    iget v0, v0, Ld/v/a/b$e;->d:F

    add-float/2addr v8, v0

    add-float/2addr v8, v3

    const/4 v0, 0x0

    :goto_10
    add-int/lit8 v7, v7, 0x1

    iget v9, v5, Ld/v/a/b$e;->b:I

    if-gt v7, v9, :cond_1f

    iget-object v9, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_1f

    :goto_11
    iget-object v9, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld/v/a/b$e;

    iget v10, v9, Ld/v/a/b$e;->b:I

    if-le v7, v10, :cond_18

    iget-object v10, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v0, v10, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_18
    :goto_12
    iget v10, v9, Ld/v/a/b$e;->b:I

    if-ge v7, v10, :cond_1a

    iget-object v10, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v10, :cond_19

    add-float v10, v2, v3

    add-float/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 2
    :cond_19
    throw v1

    .line 3
    :cond_1a
    iput v8, v9, Ld/v/a/b$e;->e:F

    iget v9, v9, Ld/v/a/b$e;->d:F

    add-float/2addr v9, v3

    add-float/2addr v8, v9

    goto :goto_10

    :cond_1b
    if-le v7, v8, :cond_1f

    iget-object v8, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget v0, v0, Ld/v/a/b$e;->e:F

    :goto_13
    add-int/lit8 v7, v7, -0x1

    iget v9, v5, Ld/v/a/b$e;->b:I

    if-lt v7, v9, :cond_1f

    if-ltz v8, :cond_1f

    :goto_14
    iget-object v9, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld/v/a/b$e;

    iget v10, v9, Ld/v/a/b$e;->b:I

    if-ge v7, v10, :cond_1c

    if-lez v8, :cond_1c

    add-int/lit8 v8, v8, -0x1

    goto :goto_14

    :cond_1c
    :goto_15
    iget v10, v9, Ld/v/a/b$e;->b:I

    if-le v7, v10, :cond_1e

    iget-object v10, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v10, :cond_1d

    add-float v10, v2, v3

    sub-float/2addr v0, v10

    add-int/lit8 v7, v7, -0x1

    goto :goto_15

    .line 4
    :cond_1d
    throw v1

    .line 5
    :cond_1e
    iget v10, v9, Ld/v/a/b$e;->d:F

    add-float/2addr v10, v3

    sub-float/2addr v0, v10

    iput v0, v9, Ld/v/a/b$e;->e:F

    goto :goto_13

    :cond_1f
    iget-object v0, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v7, v5, Ld/v/a/b$e;->e:F

    iget v8, v5, Ld/v/a/b$e;->b:I

    add-int/lit8 v9, v8, -0x1

    if-nez v8, :cond_20

    move v8, v7

    goto :goto_16

    :cond_20
    const v8, -0x800001

    :goto_16
    iput v8, p0, Ld/v/a/b;->u:F

    iget v8, v5, Ld/v/a/b$e;->b:I

    add-int/lit8 p1, p1, -0x1

    if-ne v8, p1, :cond_21

    iget v8, v5, Ld/v/a/b$e;->e:F

    iget v10, v5, Ld/v/a/b$e;->d:F

    add-float/2addr v8, v10

    sub-float/2addr v8, v2

    goto :goto_17

    :cond_21
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    :goto_17
    iput v8, p0, Ld/v/a/b;->v:F

    add-int/lit8 v4, v4, -0x1

    :goto_18
    if-ltz v4, :cond_25

    iget-object v8, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/v/a/b$e;

    :goto_19
    iget v10, v8, Ld/v/a/b$e;->b:I

    if-le v9, v10, :cond_23

    iget-object v10, p0, Ld/v/a/b;->i:Ld/v/a/a;

    add-int/lit8 v9, v9, -0x1

    if-eqz v10, :cond_22

    add-float v10, v2, v3

    sub-float/2addr v7, v10

    goto :goto_19

    .line 6
    :cond_22
    throw v1

    .line 7
    :cond_23
    iget v11, v8, Ld/v/a/b$e;->d:F

    add-float/2addr v11, v3

    sub-float/2addr v7, v11

    iput v7, v8, Ld/v/a/b$e;->e:F

    if-nez v10, :cond_24

    iput v7, p0, Ld/v/a/b;->u:F

    :cond_24
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_18

    :cond_25
    iget v4, v5, Ld/v/a/b$e;->e:F

    iget v7, v5, Ld/v/a/b$e;->d:F

    add-float/2addr v4, v7

    add-float/2addr v4, v3

    iget v5, v5, Ld/v/a/b$e;->b:I

    :goto_1a
    add-int/lit8 v5, v5, 0x1

    if-ge v6, v0, :cond_29

    iget-object v7, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/v/a/b$e;

    :goto_1b
    iget v8, v7, Ld/v/a/b$e;->b:I

    if-ge v5, v8, :cond_27

    iget-object v8, p0, Ld/v/a/b;->i:Ld/v/a/a;

    add-int/lit8 v5, v5, 0x1

    if-eqz v8, :cond_26

    add-float v8, v2, v3

    add-float/2addr v4, v8

    goto :goto_1b

    .line 8
    :cond_26
    throw v1

    :cond_27
    if-ne v8, p1, :cond_28

    .line 9
    iget v8, v7, Ld/v/a/b$e;->d:F

    add-float/2addr v8, v4

    sub-float/2addr v8, v2

    iput v8, p0, Ld/v/a/b;->v:F

    :cond_28
    iput v4, v7, Ld/v/a/b$e;->e:F

    iget v7, v7, Ld/v/a/b$e;->d:F

    add-float/2addr v7, v3

    add-float/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 10
    :cond_29
    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz p1, :cond_2a

    goto :goto_1c

    .line 11
    :cond_2a
    throw v1

    .line 12
    :cond_2b
    :goto_1c
    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, p1, :cond_2d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ld/v/a/b$f;

    iput v0, v3, Ld/v/a/b$f;->f:I

    iget-boolean v4, v3, Ld/v/a/b$f;->a:Z

    if-nez v4, :cond_2c

    iget v4, v3, Ld/v/a/b$f;->c:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2c

    invoke-virtual {p0, v2}, Ld/v/a/b;->h(Landroid/view/View;)Ld/v/a/b$e;

    move-result-object v2

    if-eqz v2, :cond_2c

    iget v4, v2, Ld/v/a/b$e;->d:F

    iput v4, v3, Ld/v/a/b$f;->c:F

    iget v2, v2, Ld/v/a/b$e;->b:I

    iput v2, v3, Ld/v/a/b$f;->e:I

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 13
    :goto_1e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2f

    if-eqz v0, :cond_30

    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_2e

    goto :goto_1f

    :cond_2e
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_1e

    :cond_2f
    invoke-virtual {p0, p1}, Ld/v/a/b;->h(Landroid/view/View;)Ld/v/a/b$e;

    move-result-object v1

    :cond_30
    :goto_1f
    if-eqz v1, :cond_31

    .line 14
    iget p1, v1, Ld/v/a/b$e;->b:I

    iget v0, p0, Ld/v/a/b;->j:I

    if-eq p1, v0, :cond_33

    :cond_31
    const/4 p1, 0x0

    :goto_20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_33

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/v/a/b;->h(Landroid/view/View;)Ld/v/a/b$e;

    move-result-object v1

    if-eqz v1, :cond_32

    iget v1, v1, Ld/v/a/b$e;->b:I

    iget v2, p0, Ld/v/a/b;->j:I

    if-ne v1, v2, :cond_32

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_21

    :cond_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_33
    :goto_21
    return-void

    .line 15
    :cond_34
    throw v1

    .line 16
    :cond_35
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_22

    :catch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :goto_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/v/a/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Pager id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Pager class: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Problematic adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_36
    throw v1
.end method

.method public final r(IIII)V
    .locals 1

    if-lez p2, :cond_1

    iget-object v0, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {p0}, Ld/v/a/b;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_2

    :cond_1
    iget p2, p0, Ld/v/a/b;->j:I

    invoke-virtual {p0, p2}, Ld/v/a/b;->j(I)Ld/v/a/b$e;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Ld/v/a/b$e;->e:F

    iget p3, p0, Ld/v/a/b;->v:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ld/v/a/b;->d(Z)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Ld/v/a/b;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final s(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public setAdapter(Ld/v/a/a;)V
    .locals 7

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 1
    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/v/a/b$e;

    iget-object v5, p0, Ld/v/a/b;->i:Ld/v/a/a;

    iget v6, v4, Ld/v/a/b$e;->b:I

    iget-object v4, v4, Ld/v/a/b$e;->a:Ljava/lang/Object;

    invoke-virtual {v5, p0, v6, v4}, Ld/v/a/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ld/v/a/b$f;

    iget-boolean v4, v4, Ld/v/a/b$f;->a:Z

    if-nez v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    .line 4
    :cond_2
    iput v2, p0, Ld/v/a/b;->j:I

    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_2

    .line 5
    :cond_3
    throw v3

    .line 6
    :cond_4
    throw v3

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 8
    :cond_5
    :goto_2
    iput-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    iput v2, p0, Ld/v/a/b;->e:I

    if-eqz p1, :cond_a

    iget-object p1, p0, Ld/v/a/b;->p:Ld/v/a/b$i;

    if-nez p1, :cond_6

    new-instance p1, Ld/v/a/b$i;

    invoke-direct {p1, p0}, Ld/v/a/b$i;-><init>(Ld/v/a/b;)V

    iput-object p1, p0, Ld/v/a/b;->p:Ld/v/a/b$i;

    :cond_6
    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    .line 9
    monitor-enter p1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    iput-boolean v2, p0, Ld/v/a/b;->z:Z

    iget-boolean p1, p0, Ld/v/a/b;->S:Z

    iput-boolean v1, p0, Ld/v/a/b;->S:Z

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    invoke-virtual {v0}, Ld/v/a/a;->b()I

    move-result v0

    iput v0, p0, Ld/v/a/b;->e:I

    iget v0, p0, Ld/v/a/b;->k:I

    if-ltz v0, :cond_8

    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    check-cast p1, Le/b/b/o/r$b;

    if-eqz p1, :cond_7

    .line 11
    invoke-virtual {p0, v0, v2, v1, v2}, Ld/v/a/b;->v(IZZI)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Ld/v/a/b;->k:I

    iput-object v3, p0, Ld/v/a/b;->l:Landroid/os/Parcelable;

    iput-object v3, p0, Ld/v/a/b;->m:Ljava/lang/ClassLoader;

    goto :goto_3

    .line 13
    :cond_7
    throw v3

    :cond_8
    if-nez p1, :cond_9

    .line 14
    iget p1, p0, Ld/v/a/b;->j:I

    invoke-virtual {p0, p1}, Ld/v/a/b;->q(I)V

    goto :goto_3

    .line 15
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 16
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_a
    :goto_3
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/v/a/b;->z:Z

    iget-boolean v1, p0, Ld/v/a/b;->S:Z

    xor-int/lit8 v1, v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v1, v0, v0}, Ld/v/a/b;->v(IZZI)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Ld/v/a/b;->A:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Ld/v/a/b;->A:I

    .line 1
    iget p1, p0, Ld/v/a/b;->j:I

    invoke-virtual {p0, p1}, Ld/v/a/b;->q(I)V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Ld/v/a/b$h;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Ld/v/a/b;->V:Ld/v/a/b$h;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Ld/v/a/b;->q:I

    iput p1, p0, Ld/v/a/b;->q:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1, v1, p1, v0}, Ld/v/a/b;->r(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld/h/e/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/v/a/b;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Ld/v/a/b;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setScrollState(I)V
    .locals 1

    iget v0, p0, Ld/v/a/b;->b0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ld/v/a/b;->b0:I

    .line 1
    iget-object v0, p0, Ld/v/a/b;->V:Ld/v/a/b$h;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ld/v/a/b$h;->b(I)V

    :cond_1
    return-void
.end method

.method public final t()Z
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Ld/v/a/b;->K:I

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ld/v/a/b;->B:Z

    iput-boolean v0, p0, Ld/v/a/b;->C:Z

    iget-object v1, p0, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Ld/v/a/b;->L:Landroid/view/VelocityTracker;

    .line 2
    :cond_0
    iget-object v1, p0, Ld/v/a/b;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Ld/v/a/b;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Ld/v/a/b;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ld/v/a/b;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final u(IZIZ)V
    .locals 10

    invoke-virtual {p0, p1}, Ld/v/a/b;->j(I)Ld/v/a/b$e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Ld/v/a/b;->u:F

    iget v0, v0, Ld/v/a/b$e;->e:F

    iget v4, p0, Ld/v/a/b;->v:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, v1}, Ld/v/a/b;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_5

    :cond_1
    iget-object p2, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    iget-boolean p2, p0, Ld/v/a/b;->o:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrX()I

    move-result p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    move-result p2

    :goto_2
    iget-object v3, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v1}, Ld/v/a/b;->setScrollingCacheEnabled(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    :goto_3
    move v4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    sub-int v6, v0, v4

    rsub-int/lit8 v7, v5, 0x0

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {p0, v1}, Ld/v/a/b;->d(Z)V

    .line 2
    iget p2, p0, Ld/v/a/b;->j:I

    invoke-virtual {p0, p2}, Ld/v/a/b;->q(I)V

    .line 3
    invoke-virtual {p0, v1}, Ld/v/a/b;->setScrollState(I)V

    goto :goto_5

    :cond_5
    invoke-direct {p0, v2}, Ld/v/a/b;->setScrollingCacheEnabled(Z)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Ld/v/a/b;->setScrollState(I)V

    invoke-direct {p0}, Ld/v/a/b;->getClientWidth()I

    move-result p2

    div-int/lit8 v0, p2, 0x2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v2, v8

    const v8, 0x3ef1463b

    mul-float v2, v2, v8

    float-to-double v8, v2

    .line 4
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float v2, v2, v0

    add-float/2addr v2, v0

    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_6

    const/high16 p2, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float p3, p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    goto :goto_4

    :cond_6
    iget-object p3, p0, Ld/v/a/b;->i:Ld/v/a/a;

    if-eqz p3, :cond_7

    mul-float p2, p2, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    iget v0, p0, Ld/v/a/b;->q:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    div-float/2addr p3, p2

    add-float/2addr p3, v3

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p3, p2

    float-to-int p2, p3

    :goto_4
    const/16 p3, 0x258

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput-boolean v1, p0, Ld/v/a/b;->o:Z

    iget-object v3, p0, Ld/v/a/b;->n:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Ld/h/l/p;->S(Landroid/view/View;)V

    :goto_5
    if-eqz p4, :cond_a

    .line 6
    iget-object p2, p0, Ld/v/a/b;->V:Ld/v/a/b$h;

    if-eqz p2, :cond_a

    invoke-interface {p2, p1}, Ld/v/a/b$h;->c(I)V

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_8
    if-eqz p4, :cond_9

    .line 8
    iget-object p2, p0, Ld/v/a/b;->V:Ld/v/a/b$h;

    if-eqz p2, :cond_9

    invoke-interface {p2, p1}, Ld/v/a/b$h;->c(I)V

    .line 9
    :cond_9
    invoke-virtual {p0, v1}, Ld/v/a/b;->d(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0, v0}, Ld/v/a/b;->o(I)Z

    :cond_a
    :goto_6
    return-void
.end method

.method public v(IZZI)V
    .locals 4

    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ld/v/a/a;->b()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Ld/v/a/b;->j:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, v1}, Ld/v/a/b;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ld/v/a/b;->i:Ld/v/a/a;

    invoke-virtual {v0}, Ld/v/a/a;->b()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Ld/v/a/b;->i:Ld/v/a/a;

    invoke-virtual {p1}, Ld/v/a/a;->b()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_3
    :goto_0
    iget v0, p0, Ld/v/a/b;->A:I

    iget v2, p0, Ld/v/a/b;->j:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Ld/v/a/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/v/a/b$e;

    iput-boolean p3, v2, Ld/v/a/b$e;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Ld/v/a/b;->j:I

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    iget-boolean p3, p0, Ld/v/a/b;->S:Z

    if-eqz p3, :cond_8

    iput p1, p0, Ld/v/a/b;->j:I

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Ld/v/a/b;->f(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1}, Ld/v/a/b;->q(I)V

    invoke-virtual {p0, p1, p2, p4, v1}, Ld/v/a/b;->u(IZIZ)V

    :goto_2
    return-void

    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Ld/v/a/b;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/v/a/b;->r:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
