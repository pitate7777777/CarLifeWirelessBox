.class public Ld/b/q/z0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/b/q/d0;


# instance fields
.field public a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/view/Window$Callback;

.field public m:Z

.field public n:Ld/b/q/c;

.field public o:I

.field public p:I

.field public q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 6

    sget v0, Ld/b/h;->abc_action_bar_up_description:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Ld/b/q/z0;->o:I

    iput v1, p0, Ld/b/q/z0;->p:I

    iput-object p1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Ld/b/q/z0;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Ld/b/q/z0;->j:Ljava/lang/CharSequence;

    iget-object v2, p0, Ld/b/q/z0;->i:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Ld/b/q/z0;->h:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Ld/b/q/z0;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Ld/b/j;->ActionBar:[I

    sget v4, Ld/b/a;->actionBarStyle:I

    const/4 v5, 0x0

    invoke-static {p1, v5, v2, v4, v1}, Ld/b/q/x0;->q(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ld/b/q/x0;

    move-result-object p1

    sget v2, Ld/b/j;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {p1, v2}, Ld/b/q/x0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Ld/b/q/z0;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e

    sget p2, Ld/b/j;->ActionBar_title:I

    invoke-virtual {p1, p2}, Ld/b/q/x0;->n(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2
    iput-boolean v3, p0, Ld/b/q/z0;->h:Z

    .line 3
    iput-object p2, p0, Ld/b/q/z0;->i:Ljava/lang/CharSequence;

    iget v2, p0, Ld/b/q/z0;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    iget-object v2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    sget p2, Ld/b/j;->ActionBar_subtitle:I

    invoke-virtual {p1, p2}, Ld/b/q/x0;->n(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iput-object p2, p0, Ld/b/q/z0;->j:Ljava/lang/CharSequence;

    iget v2, p0, Ld/b/q/z0;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    iget-object v2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    :cond_2
    sget p2, Ld/b/j;->ActionBar_logo:I

    invoke-virtual {p1, p2}, Ld/b/q/x0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7
    iput-object p2, p0, Ld/b/q/z0;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ld/b/q/z0;->y()V

    .line 8
    :cond_3
    sget p2, Ld/b/j;->ActionBar_icon:I

    invoke-virtual {p1, p2}, Ld/b/q/x0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 9
    iput-object p2, p0, Ld/b/q/z0;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ld/b/q/z0;->y()V

    .line 10
    :cond_4
    iget-object p2, p0, Ld/b/q/z0;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, Ld/b/q/z0;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 11
    iput-object p2, p0, Ld/b/q/z0;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ld/b/q/z0;->x()V

    .line 12
    :cond_5
    sget p2, Ld/b/j;->ActionBar_displayOptions:I

    invoke-virtual {p1, p2, v1}, Ld/b/q/x0;->j(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ld/b/q/z0;->v(I)V

    sget p2, Ld/b/j;->ActionBar_customNavigationLayout:I

    invoke-virtual {p1, p2, v1}, Ld/b/q/x0;->l(II)I

    move-result p2

    if-eqz p2, :cond_8

    iget-object v2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 13
    iget-object v2, p0, Ld/b/q/z0;->d:Landroid/view/View;

    if-eqz v2, :cond_6

    iget v3, p0, Ld/b/q/z0;->b:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    iget-object v3, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iput-object p2, p0, Ld/b/q/z0;->d:Landroid/view/View;

    if-eqz p2, :cond_7

    iget v2, p0, Ld/b/q/z0;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    iget-object v2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    :cond_7
    iget p2, p0, Ld/b/q/z0;->b:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Ld/b/q/z0;->v(I)V

    :cond_8
    sget p2, Ld/b/j;->ActionBar_height:I

    invoke-virtual {p1, p2, v1}, Ld/b/q/x0;->k(II)I

    move-result p2

    if-lez p2, :cond_9

    iget-object v2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    sget p2, Ld/b/j;->ActionBar_contentInsetStart:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Ld/b/q/x0;->e(II)I

    move-result p2

    sget v3, Ld/b/j;->ActionBar_contentInsetEnd:I

    invoke-virtual {p1, v3, v2}, Ld/b/q/x0;->e(II)I

    move-result v2

    if-gez p2, :cond_a

    if-ltz v2, :cond_b

    :cond_a
    iget-object v3, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 15
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->d()V

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->x:Ld/b/q/p0;

    invoke-virtual {v3, p2, v2}, Ld/b/q/p0;->a(II)V

    .line 16
    :cond_b
    sget p2, Ld/b/j;->ActionBar_titleTextStyle:I

    invoke-virtual {p1, p2, v1}, Ld/b/q/x0;->l(II)I

    move-result p2

    if-eqz p2, :cond_c

    iget-object v2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 17
    iput p2, v2, Landroidx/appcompat/widget/Toolbar;->p:I

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 18
    :cond_c
    sget p2, Ld/b/j;->ActionBar_subtitleTextStyle:I

    invoke-virtual {p1, p2, v1}, Ld/b/q/x0;->l(II)I

    move-result p2

    if-eqz p2, :cond_d

    iget-object v2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 19
    iput p2, v2, Landroidx/appcompat/widget/Toolbar;->q:I

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 20
    :cond_d
    sget p2, Ld/b/j;->ActionBar_popupTheme:I

    invoke-virtual {p1, p2, v1}, Ld/b/q/x0;->l(II)I

    move-result p2

    if-eqz p2, :cond_10

    iget-object v1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_2

    .line 21
    :cond_e
    iget-object p2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    const/16 p2, 0xf

    iget-object v1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ld/b/q/z0;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_f
    const/16 p2, 0xb

    .line 22
    :goto_1
    iput p2, p0, Ld/b/q/z0;->b:I

    .line 23
    :cond_10
    :goto_2
    iget-object p1, p1, Ld/b/q/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    iget p1, p0, Ld/b/q/z0;->p:I

    if-ne v0, p1, :cond_11

    goto :goto_4

    :cond_11
    iput v0, p0, Ld/b/q/z0;->p:I

    iget-object p1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget p1, p0, Ld/b/q/z0;->p:I

    if-nez p1, :cond_12

    goto :goto_3

    .line 25
    :cond_12
    invoke-virtual {p0}, Ld/b/q/z0;->d()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 26
    :goto_3
    iput-object v5, p0, Ld/b/q/z0;->k:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ld/b/q/z0;->w()V

    .line 27
    :cond_13
    :goto_4
    iget-object p1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ld/b/q/z0;->k:Ljava/lang/CharSequence;

    iget-object p1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance p2, Ld/b/q/y0;

    invoke-direct {p2, p0}, Ld/b/q/y0;-><init>(Ld/b/q/z0;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;Ld/b/p/i/m$a;)V
    .locals 5

    iget-object v0, p0, Ld/b/q/z0;->n:Ld/b/q/c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ld/b/q/c;

    iget-object v2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ld/b/q/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld/b/q/z0;->n:Ld/b/q/c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    throw v1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/b/q/z0;->n:Ld/b/q/c;

    .line 3
    iput-object p2, v0, Ld/b/p/i/b;->i:Ld/b/p/i/m$a;

    .line 4
    iget-object p2, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, Ld/b/p/i/g;

    if-nez p1, :cond_2

    .line 5
    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->f()V

    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->t:Ld/b/p/i/g;

    if-ne v2, p1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 7
    iget-object v3, p2, Landroidx/appcompat/widget/Toolbar;->N:Ld/b/q/c;

    invoke-virtual {v2, v3}, Ld/b/p/i/g;->u(Ld/b/p/i/m;)V

    iget-object v3, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {v2, v3}, Ld/b/p/i/g;->u(Ld/b/p/i/m;)V

    :cond_4
    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v2, :cond_5

    new-instance v2, Landroidx/appcompat/widget/Toolbar$d;

    invoke-direct {v2, p2}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v2, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    :cond_5
    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v0, Ld/b/q/c;->u:Z

    if-eqz p1, :cond_6

    .line 9
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->n:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Ld/b/p/i/g;->b(Ld/b/p/i/m;Landroid/content/Context;)V

    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->n:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Ld/b/p/i/g;->b(Ld/b/p/i/m;Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->n:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Ld/b/q/c;->d(Landroid/content/Context;Ld/b/p/i/g;)V

    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    .line 10
    iget-object v3, p1, Landroidx/appcompat/widget/Toolbar$d;->e:Ld/b/p/i/g;

    if-eqz v3, :cond_7

    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar$d;->f:Ld/b/p/i/i;

    if-eqz v4, :cond_7

    invoke-virtual {v3, v4}, Ld/b/p/i/g;->d(Ld/b/p/i/i;)Z

    :cond_7
    iput-object v1, p1, Landroidx/appcompat/widget/Toolbar$d;->e:Ld/b/p/i/g;

    .line 11
    invoke-virtual {v0, v2}, Ld/b/q/c;->j(Z)V

    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar$d;->j(Z)V

    :goto_1
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p2, Landroidx/appcompat/widget/Toolbar;->o:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Ld/b/q/c;)V

    iput-object v0, p2, Landroidx/appcompat/widget/Toolbar;->N:Ld/b/q/c;

    :goto_2
    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->x:Ld/b/q/c;

    if-eqz v0, :cond_2

    .line 3
    iget-object v3, v0, Ld/b/q/c;->z:Ld/b/q/c$c;

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ld/b/q/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->p()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->f:Ld/b/p/i/i;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/b/p/i/i;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->x:Ld/b/q/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b/q/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->v()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b/q/z0;->m:Z

    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->x:Ld/b/q/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b/q/c;->f()Z

    :cond_0
    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Ld/b/q/z0;->b:I

    return v0
.end method

.method public k(I)V
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public l(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ld/b/q/z0;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-object p1, p0, Ld/b/q/z0;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ld/b/q/z0;->y()V

    return-void
.end method

.method public m(Ld/b/q/q0;)V
    .locals 1

    iget-object p1, p0, Ld/b/q/z0;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ld/b/q/z0;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ld/b/q/z0;->c:Landroid/view/View;

    return-void
.end method

.method public n()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public o(Z)V
    .locals 0

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Ld/b/q/z0;->o:I

    return v0
.end method

.method public q(IJ)Ld/h/l/s;
    .locals 2

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Ld/h/l/p;->b(Landroid/view/View;)Ld/h/l/s;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ld/h/l/s;->a(F)Ld/h/l/s;

    invoke-virtual {v0, p2, p3}, Ld/h/l/s;->c(J)Ld/h/l/s;

    new-instance p2, Ld/b/q/z0$a;

    invoke-direct {p2, p0, p1}, Ld/b/q/z0$a;-><init>(Ld/b/q/z0;I)V

    .line 1
    iget-object p1, v0, Ld/h/l/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1, p2}, Ld/h/l/s;->e(Landroid/view/View;Ld/h/l/t;)V

    :cond_1
    return-object v0
.end method

.method public r()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->f:Ld/b/p/i/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ld/b/q/z0;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-object p1, p0, Ld/b/q/z0;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ld/b/q/z0;->y()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Ld/b/q/z0;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ld/b/q/z0;->y()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b/q/z0;->h:Z

    .line 1
    iput-object p1, p0, Ld/b/q/z0;->i:Ljava/lang/CharSequence;

    iget v0, p0, Ld/b/q/z0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Ld/b/q/z0;->l:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Ld/b/q/z0;->h:Z

    if-nez v0, :cond_0

    .line 1
    iput-object p1, p0, Ld/b/q/z0;->i:Ljava/lang/CharSequence;

    iget v0, p0, Ld/b/q/z0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public u(Z)V
    .locals 1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public v(I)V
    .locals 3

    iget v0, p0, Ld/b/q/z0;->b:I

    xor-int/2addr v0, p1

    iput p1, p0, Ld/b/q/z0;->b:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ld/b/q/z0;->w()V

    :cond_0
    invoke-virtual {p0}, Ld/b/q/z0;->x()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ld/b/q/z0;->y()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Ld/b/q/z0;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Ld/b/q/z0;->j:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Ld/b/q/z0;->d:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    iget-object p1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 2

    iget v0, p0, Ld/b/q/z0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/b/q/z0;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Ld/b/q/z0;->p:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Ld/b/q/z0;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 2

    iget v0, p0, Ld/b/q/z0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Ld/b/q/z0;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld/b/q/z0;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final y()V
    .locals 2

    iget v0, p0, Ld/b/q/z0;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/b/q/z0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/b/q/z0;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld/b/q/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
