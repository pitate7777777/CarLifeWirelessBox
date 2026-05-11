.class public Le/c/a/a/i0/a;
.super Le/c/a/a/i0/m;
.source ""


# instance fields
.field public final d:Landroid/text/TextWatcher;

.field public final e:Landroid/view/View$OnFocusChangeListener;

.field public final f:Lcom/google/android/material/textfield/TextInputLayout$f;

.field public final g:Lcom/google/android/material/textfield/TextInputLayout$g;

.field public h:Landroid/animation/AnimatorSet;

.field public i:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Le/c/a/a/i0/m;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, Le/c/a/a/i0/a$a;

    invoke-direct {p1, p0}, Le/c/a/a/i0/a$a;-><init>(Le/c/a/a/i0/a;)V

    iput-object p1, p0, Le/c/a/a/i0/a;->d:Landroid/text/TextWatcher;

    new-instance p1, Le/c/a/a/i0/a$b;

    invoke-direct {p1, p0}, Le/c/a/a/i0/a$b;-><init>(Le/c/a/a/i0/a;)V

    iput-object p1, p0, Le/c/a/a/i0/a;->e:Landroid/view/View$OnFocusChangeListener;

    new-instance p1, Le/c/a/a/i0/a$c;

    invoke-direct {p1, p0}, Le/c/a/a/i0/a$c;-><init>(Le/c/a/a/i0/a;)V

    iput-object p1, p0, Le/c/a/a/i0/a;->f:Lcom/google/android/material/textfield/TextInputLayout$f;

    new-instance p1, Le/c/a/a/i0/a$d;

    invoke-direct {p1, p0}, Le/c/a/a/i0/a$d;-><init>(Le/c/a/a/i0/a;)V

    iput-object p1, p0, Le/c/a/a/i0/a;->g:Lcom/google/android/material/textfield/TextInputLayout$g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Le/c/a/a/i0/m;->b:Landroid/content/Context;

    sget v2, Le/c/a/a/e;->mtrl_ic_cancel:I

    invoke-static {v1, v2}, Ld/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Le/c/a/a/i;->clear_text_end_icon_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Le/c/a/a/i0/a$e;

    invoke-direct {v1, p0}, Le/c/a/a/i0/a$e;-><init>(Le/c/a/a/i0/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Le/c/a/a/i0/a;->f:Lcom/google/android/material/textfield/TextInputLayout$f;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$f;)V

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Le/c/a/a/i0/a;->g:Lcom/google/android/material/textfield/TextInputLayout$g;

    .line 1
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Le/c/a/a/l/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Le/c/a/a/i0/e;

    invoke-direct {v2, p0}, Le/c/a/a/i0/e;-><init>(Le/c/a/a/i0/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 3
    fill-array-data v2, :array_1

    .line 4
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Le/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Le/c/a/a/i0/d;

    invoke-direct {v5, p0}, Le/c/a/a/i0/d;-><init>(Le/c/a/a/i0/a;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Le/c/a/a/i0/a;->h:Landroid/animation/AnimatorSet;

    new-array v6, v0, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Le/c/a/a/i0/a;->h:Landroid/animation/AnimatorSet;

    new-instance v2, Le/c/a/a/i0/b;

    invoke-direct {v2, p0}, Le/c/a/a/i0/b;-><init>(Le/c/a/a/i0/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    .line 6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Le/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Le/c/a/a/i0/d;

    invoke-direct {v1, p0}, Le/c/a/a/i0/d;-><init>(Le/c/a/a/i0/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iput-object v0, p0, Le/c/a/a/i0/a;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Le/c/a/a/i0/c;

    invoke-direct {v1, p0}, Le/c/a/a/i0/c;-><init>(Le/c/a/a/i0/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Le/c/a/a/i0/a;->e(Z)V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->k()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Le/c/a/a/i0/a;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Le/c/a/a/i0/a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Le/c/a/a/i0/a;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Le/c/a/a/i0/a;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Le/c/a/a/i0/a;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Le/c/a/a/i0/a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Le/c/a/a/i0/a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    :goto_1
    return-void
.end method
