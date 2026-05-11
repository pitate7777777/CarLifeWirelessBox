.class public Le/c/a/a/i0/h;
.super Le/c/a/a/i0/m;
.source ""


# instance fields
.field public final d:Landroid/text/TextWatcher;

.field public final e:Landroid/view/View$OnFocusChangeListener;

.field public final f:Lcom/google/android/material/textfield/TextInputLayout$e;

.field public final g:Lcom/google/android/material/textfield/TextInputLayout$f;

.field public final h:Lcom/google/android/material/textfield/TextInputLayout$g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Z

.field public k:J

.field public l:Landroid/graphics/drawable/StateListDrawable;

.field public m:Le/c/a/a/f0/g;

.field public n:Landroid/view/accessibility/AccessibilityManager;

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Le/c/a/a/i0/m;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, Le/c/a/a/i0/h$a;

    invoke-direct {p1, p0}, Le/c/a/a/i0/h$a;-><init>(Le/c/a/a/i0/h;)V

    iput-object p1, p0, Le/c/a/a/i0/h;->d:Landroid/text/TextWatcher;

    new-instance p1, Le/c/a/a/i0/h$b;

    invoke-direct {p1, p0}, Le/c/a/a/i0/h$b;-><init>(Le/c/a/a/i0/h;)V

    iput-object p1, p0, Le/c/a/a/i0/h;->e:Landroid/view/View$OnFocusChangeListener;

    new-instance p1, Le/c/a/a/i0/h$c;

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p1, p0, v0}, Le/c/a/a/i0/h$c;-><init>(Le/c/a/a/i0/h;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p1, p0, Le/c/a/a/i0/h;->f:Lcom/google/android/material/textfield/TextInputLayout$e;

    new-instance p1, Le/c/a/a/i0/h$d;

    invoke-direct {p1, p0}, Le/c/a/a/i0/h$d;-><init>(Le/c/a/a/i0/h;)V

    iput-object p1, p0, Le/c/a/a/i0/h;->g:Lcom/google/android/material/textfield/TextInputLayout$f;

    new-instance p1, Le/c/a/a/i0/h$e;

    invoke-direct {p1, p0}, Le/c/a/a/i0/h$e;-><init>(Le/c/a/a/i0/h;)V

    iput-object p1, p0, Le/c/a/a/i0/h;->h:Lcom/google/android/material/textfield/TextInputLayout$g;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/c/a/a/i0/h;->i:Z

    iput-boolean p1, p0, Le/c/a/a/i0/h;->j:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Le/c/a/a/i0/h;->k:J

    return-void
.end method

.method public static e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/AutoCompleteTextView;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Landroid/widget/EditText;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Le/c/a/a/i0/h;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/c/a/a/i0/h;->j:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Le/c/a/a/i0/h;->j:Z

    iget-object p1, p0, Le/c/a/a/i0/h;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Le/c/a/a/i0/h;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public static h(Le/c/a/a/i0/h;Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/c/a/a/i0/h;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Le/c/a/a/i0/h;->i:Z

    :cond_1
    iget-boolean v0, p0, Le/c/a/a/i0/h;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Le/c/a/a/i0/h;->j:Z

    xor-int/lit8 v1, v0, 0x1

    if-eq v0, v1, :cond_2

    .line 2
    iput-boolean v1, p0, Le/c/a/a/i0/h;->j:Z

    iget-object v0, p0, Le/c/a/a/i0/h;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Le/c/a/a/i0/h;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3
    :cond_2
    iget-boolean p0, p0, Le/c/a/a/i0/h;->j:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Le/c/a/a/i0/h;->i:Z

    :goto_0
    return-void

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Le/c/a/a/i0/m;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Le/c/a/a/d;->mtrl_shape_corner_size_small_component:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Le/c/a/a/i0/m;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Le/c/a/a/d;->mtrl_exposed_dropdown_menu_popup_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Le/c/a/a/i0/m;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Le/c/a/a/d;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Le/c/a/a/i0/h;->i(FFFI)Le/c/a/a/f0/g;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0, v1, v2}, Le/c/a/a/i0/h;->i(FFFI)Le/c/a/a/f0/g;

    move-result-object v0

    iput-object v3, p0, Le/c/a/a/i0/h;->m:Le/c/a/a/f0/g;

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Le/c/a/a/i0/h;->l:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, 0x10100aa

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Le/c/a/a/i0/h;->l:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget v0, Le/c/a/a/e;->mtrl_dropdown_arrow:I

    iget-object v1, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Le/c/a/a/i0/m;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Ld/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Le/c/a/a/i;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Le/c/a/a/i0/h$f;

    invoke-direct {v1, p0}, Le/c/a/a/i0/h$f;-><init>(Le/c/a/a/i0/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Le/c/a/a/i0/h;->g:Lcom/google/android/material/textfield/TextInputLayout$f;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$f;)V

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Le/c/a/a/i0/h;->h:Lcom/google/android/material/textfield/TextInputLayout$g;

    .line 1
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    .line 3
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Le/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v2, 0x43

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Le/c/a/a/i0/i;

    invoke-direct {v2, p0}, Le/c/a/a/i0/i;-><init>(Le/c/a/a/i0/h;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iput-object v1, p0, Le/c/a/a/i0/h;->p:Landroid/animation/ValueAnimator;

    const/16 v1, 0x32

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 5
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Le/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Le/c/a/a/i0/i;

    invoke-direct {v1, p0}, Le/c/a/a/i0/i;-><init>(Le/c/a/a/i0/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iput-object v0, p0, Le/c/a/a/i0/h;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Le/c/a/a/i0/l;

    invoke-direct {v1, p0}, Le/c/a/a/i0/l;-><init>(Le/c/a/a/i0/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object v0, p0, Le/c/a/a/i0/m;->b:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Le/c/a/a/i0/h;->n:Landroid/view/accessibility/AccessibilityManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i(FFFI)Le/c/a/a/f0/g;
    .locals 2

    .line 1
    new-instance v0, Le/c/a/a/f0/j$b;

    invoke-direct {v0}, Le/c/a/a/f0/j$b;-><init>()V

    .line 2
    new-instance v1, Le/c/a/a/f0/a;

    invoke-direct {v1, p1}, Le/c/a/a/f0/a;-><init>(F)V

    iput-object v1, v0, Le/c/a/a/f0/j$b;->e:Le/c/a/a/f0/c;

    .line 3
    new-instance v1, Le/c/a/a/f0/a;

    invoke-direct {v1, p1}, Le/c/a/a/f0/a;-><init>(F)V

    iput-object v1, v0, Le/c/a/a/f0/j$b;->f:Le/c/a/a/f0/c;

    .line 4
    new-instance p1, Le/c/a/a/f0/a;

    invoke-direct {p1, p2}, Le/c/a/a/f0/a;-><init>(F)V

    iput-object p1, v0, Le/c/a/a/f0/j$b;->h:Le/c/a/a/f0/c;

    .line 5
    new-instance p1, Le/c/a/a/f0/a;

    invoke-direct {p1, p2}, Le/c/a/a/f0/a;-><init>(F)V

    iput-object p1, v0, Le/c/a/a/f0/j$b;->g:Le/c/a/a/f0/c;

    .line 6
    invoke-virtual {v0}, Le/c/a/a/f0/j$b;->a()Le/c/a/a/f0/j;

    move-result-object p1

    iget-object p2, p0, Le/c/a/a/i0/m;->b:Landroid/content/Context;

    invoke-static {p2, p3}, Le/c/a/a/f0/g;->f(Landroid/content/Context;F)Le/c/a/a/f0/g;

    move-result-object p2

    .line 7
    iget-object p3, p2, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iput-object p1, p3, Le/c/a/a/f0/g$b;->a:Le/c/a/a/f0/j;

    invoke-virtual {p2}, Le/c/a/a/f0/g;->invalidateSelf()V

    .line 8
    iget-object p1, p2, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iget-object p3, p1, Le/c/a/a/f0/g$b;->i:Landroid/graphics/Rect;

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p1, Le/c/a/a/f0/g$b;->i:Landroid/graphics/Rect;

    :cond_0
    iget-object p1, p2, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iget-object p1, p1, Le/c/a/a/f0/g$b;->i:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p4, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Le/c/a/a/f0/g;->invalidateSelf()V

    return-object p2
.end method

.method public final j()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/c/a/a/i0/h;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

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
