.class public Le/b/b/o/p;
.super Le/b/b/o/g;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/b/o/p$c;
    }
.end annotation


# static fields
.field public static s0:I = 0x4e20

.field public static t0:Le/b/b/o/p;


# instance fields
.field public d0:Landroid/widget/ImageView;

.field public e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/widget/Button;

.field public h0:Landroid/widget/TextView;

.field public i0:Landroid/widget/ImageButton;

.field public j0:Le/b/b/p/a;

.field public k0:I

.field public l0:Landroid/widget/RelativeLayout;

.field public m0:Landroid/widget/RelativeLayout$LayoutParams;

.field public n0:Landroid/widget/RelativeLayout$LayoutParams;

.field public o0:Z

.field public p0:Z

.field public q0:Ljava/lang/Runnable;

.field public r0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Le/b/b/o/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    iput-object v0, p0, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    iput-object v0, p0, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    iput-object v0, p0, Le/b/b/o/p;->g0:Landroid/widget/Button;

    iput-object v0, p0, Le/b/b/o/p;->h0:Landroid/widget/TextView;

    iput-object v0, p0, Le/b/b/o/p;->i0:Landroid/widget/ImageButton;

    iput-object v0, p0, Le/b/b/o/p;->j0:Le/b/b/p/a;

    const/4 v1, 0x0

    iput v1, p0, Le/b/b/o/p;->k0:I

    iput-object v0, p0, Le/b/b/o/p;->m0:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Le/b/b/o/p;->n0:Landroid/widget/RelativeLayout$LayoutParams;

    iput-boolean v1, p0, Le/b/b/o/p;->o0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/b/b/o/p;->p0:Z

    new-instance v1, Le/b/b/o/p$a;

    invoke-direct {v1, p0}, Le/b/b/o/p$a;-><init>(Le/b/b/o/p;)V

    iput-object v1, p0, Le/b/b/o/p;->q0:Ljava/lang/Runnable;

    new-instance v1, Le/b/b/o/p$b;

    invoke-direct {v1, p0}, Le/b/b/o/p$b;-><init>(Le/b/b/o/p;)V

    iput-object v1, p0, Le/b/b/o/p;->r0:Ljava/lang/Runnable;

    new-instance v1, Le/b/b/o/p$c;

    invoke-direct {v1, p0, v0}, Le/b/b/o/p$c;-><init>(Le/b/b/o/p;Le/b/b/o/p$a;)V

    iput-object v1, p0, Le/b/b/o/p;->j0:Le/b/b/p/a;

    invoke-static {v1}, Le/b/b/p/b;->d(Le/b/b/p/a;)V

    return-void
.end method

.method public static F0()Le/b/b/o/p;
    .locals 1

    sget-object v0, Le/b/b/o/p;->t0:Le/b/b/o/p;

    if-nez v0, :cond_0

    new-instance v0, Le/b/b/o/p;

    invoke-direct {v0}, Le/b/b/o/p;-><init>()V

    sput-object v0, Le/b/b/o/p;->t0:Le/b/b/o/p;

    :cond_0
    sget-object v0, Le/b/b/o/p;->t0:Le/b/b/o/p;

    return-object v0
.end method


# virtual methods
.method public final E0()V
    .locals 7

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    .line 1
    iget-object v0, v0, Le/b/a/a/p/h;->G:Le/b/a/a/p/o/b;

    invoke-virtual {v0}, Le/b/a/a/p/o/b;->g()V

    .line 2
    sget-object v1, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v2, p0, Le/b/b/o/p;->q0:Ljava/lang/Runnable;

    sget v0, Le/b/b/o/p;->s0:I

    int-to-long v3, v0

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Le/b/a/a/r/h;->a(Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method public G0(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Le/b/b/o/p;->o0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Le/b/b/o/p;->l0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Le/b/b/o/g;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "onCreateView"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "MainFragment"

    invoke-static {p3, p2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c003a

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const v1, 0x7f090141

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    iget-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const v1, 0x7f090144

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    iput-object p2, p0, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const v3, 0x7f090142

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    iget-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const v3, 0x7f090145

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Le/b/b/o/p;->l0:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const v3, 0x7f090146

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Le/b/b/o/p;->g0:Landroid/widget/Button;

    iget-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const v3, 0x7f09013f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/b/b/o/p;->h0:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const v3, 0x7f0900f2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Le/b/b/o/p;->i0:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p2, Le/b/b/s/d;->a:Ljava/lang/String;

    const-string v3, "20542100"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Le/b/b/o/p;->g0:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iput-object v2, p0, Le/b/b/o/p;->g0:Landroid/widget/Button;

    .line 1
    iget-object p2, p0, Le/b/b/o/p;->h0:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Le/b/b/o/p;->i0:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p2, p0, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xc8

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Le/b/b/o/p;->g0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/16 p2, 0x7530

    sput p2, Le/b/b/o/p;->s0:I

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "set timeout: 30000"

    aput-object p2, p1, v0

    invoke-static {p3, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    return-object p1
.end method

.method public R()V
    .locals 3

    invoke-super {p0}, Le/b/b/o/g;->R()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroyView"

    aput-object v2, v0, v1

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public S()V
    .locals 3

    invoke-super {p0}, Le/b/b/o/g;->S()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDetach"

    aput-object v2, v0, v1

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Le/b/b/o/p;->j0:Le/b/b/p/a;

    invoke-static {v0}, Le/b/b/p/b;->e(Le/b/b/p/a;)V

    return-void
.end method

.method public U(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiddenChanged, hidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Le/b/b/o/p;->p0:Z

    const/16 v1, 0x7da

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 p1, 0x7530

    invoke-static {v1, p1}, Le/b/b/p/b;->b(II)V

    invoke-virtual {p0}, Le/b/b/o/p;->E0()V

    iput-boolean v2, p0, Le/b/b/o/p;->p0:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Le/b/b/o/p;->j0:Le/b/b/p/a;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1
    sget-object p1, Le/b/b/p/b;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    sget-object p1, Le/b/b/p/b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    sget-object p1, Le/b/b/p/b;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/b/b/p/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Le/b/b/p/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public j0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/b/b/o/p;->m0:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Le/b/b/o/p;->k0:I

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "connectStatusHeight="

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Le/b/b/o/p;->k0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Le/b/b/o/p;->m0:Landroid/widget/RelativeLayout$LayoutParams;

    new-array v0, p1, [Ljava/lang/Object;

    const-string v3, "screenHeigh=12,screenWidth=13"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Le/b/b/o/p;->m0:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Le/b/b/o/p;->k0:I

    rsub-int/lit8 v3, v3, 0xc

    mul-int/lit8 v4, v3, 0x2

    div-int/lit8 v4, v4, 0x3

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "topMargin="

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Le/b/b/o/p;->m0:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",bottomMargin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/b/b/o/p;->m0:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v1, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Le/b/b/o/p;->n0:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Le/b/b/o/p;->n0:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900f2

    if-eq p1, v0, :cond_3

    const v0, 0x7f09013f

    if-eq p1, v0, :cond_2

    const v0, 0x7f090146

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/b/b/o/p;->g0:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    const v0, 0x7f0f00fb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Le/b/b/o/p;->E0()V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Retry connection when click retry button"

    aput-object v1, p1, v0

    const-string v0, "MainFragment"

    .line 2
    invoke-static {v0, p1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    sget-object p1, Le/b/b/o/g;->c0:Le/b/b/o/h;

    invoke-static {}, Le/b/b/o/n;->E0()Le/b/b/o/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    goto/16 :goto_0

    :cond_3
    sget-object p1, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    if-eqz p1, :cond_6

    if-eqz p1, :cond_5

    .line 3
    new-instance v0, Le/b/b/t/b;

    invoke-direct {v0, p1}, Le/b/b/t/b;-><init>(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/b/t/a;->d(Ljava/lang/String;)Le/b/b/t/a;

    const v1, 0x7f0f0021

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Le/b/b/t/b;->m:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const v1, 0x7f0f001e

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/b/t/a;->b(Ljava/lang/String;)Le/b/b/t/a;

    .line 8
    iget-object v1, v0, Le/b/b/t/a;->g:Landroid/widget/TextView;

    const v2, -0xbc7b10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    new-instance v1, Le/b/b/f;

    invoke-direct {v1, p1}, Le/b/b/f;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    .line 10
    iput-object v1, v0, Le/b/b/t/a;->i:Le/b/b/t/a$c;

    const v1, 0x7f0f001d

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/b/t/a;->c(Ljava/lang/String;)Le/b/b/t/a;

    .line 12
    iput-object v0, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Le/b/b/t/b;

    new-instance v1, Le/b/b/e;

    invoke-direct {v1, p1}, Le/b/b/e;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Le/b/b/t/b;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Le/b/b/t/b;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    throw p1

    :cond_6
    :goto_0
    return-void
.end method
