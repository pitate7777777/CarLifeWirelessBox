.class public Le/b/b/o/i;
.super Le/b/b/o/g;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static j0:Le/b/b/o/i; = null

.field public static k0:Z = true


# instance fields
.field public d0:Landroid/widget/ImageView;

.field public e0:Landroid/widget/TextView;

.field public f0:Landroid/widget/Button;

.field public g0:Ljava/lang/String;

.field public h0:I

.field public i0:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Le/b/b/o/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/b/o/i;->d0:Landroid/widget/ImageView;

    iput-object v0, p0, Le/b/b/o/i;->e0:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/b/b/o/i;->i0:J

    return-void
.end method

.method public static G0()Le/b/b/o/i;
    .locals 1

    sget-object v0, Le/b/b/o/i;->j0:Le/b/b/o/i;

    if-nez v0, :cond_0

    new-instance v0, Le/b/b/o/i;

    invoke-direct {v0}, Le/b/b/o/i;-><init>()V

    sput-object v0, Le/b/b/o/i;->j0:Le/b/b/o/i;

    :cond_0
    sget-object v0, Le/b/b/o/i;->j0:Le/b/b/o/i;

    return-object v0
.end method


# virtual methods
.method public E0(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Le/b/b/o/i;->h0:I

    :cond_0
    iget-object p1, p0, Le/b/b/o/i;->d0:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget v0, p0, Le/b/b/o/i;->h0:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public F0(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Le/b/b/o/i;->g0:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Le/b/b/o/i;->e0:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/b/b/o/i;->g0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public H0()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "setStartAppBtnHide"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ExceptionFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Le/b/b/o/i;->f0:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    sput-boolean v2, Le/b/b/o/i;->k0:Z

    return-void
.end method

.method public P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Le/b/b/o/g;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "onCreateView"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "ExceptionFragment"

    invoke-static {p2, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0034

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f0900ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Le/b/b/o/i;->d0:Landroid/widget/ImageView;

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f0900ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/b/b/o/i;->e0:Landroid/widget/TextView;

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f0900f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Le/b/b/o/i;->f0:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean p1, Le/b/b/o/i;->k0:Z

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/b/b/o/i;->f0:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/b/b/o/i;->f0:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Le/b/b/o/i;->g0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Le/b/b/o/i;->e0:Landroid/widget/TextView;

    iget-object v1, p0, Le/b/b/o/i;->g0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget p1, p0, Le/b/b/o/i;->h0:I

    if-lez p1, :cond_2

    iget-object v1, p0, Le/b/b/o/i;->d0:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    sget-object p1, Le/b/b/s/d;->a:Ljava/lang/String;

    const-string v1, "20542100"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/b/b/o/i;->f0:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iput-object v0, p0, Le/b/b/o/i;->f0:Landroid/widget/Button;

    .line 1
    iget-object p1, p0, Le/b/b/o/i;->d0:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p2, 0xc8

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p2, p0, Le/b/b/o/i;->d0:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le/b/b/o/i;->e0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Le/b/b/o/i;->e0:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le/b/b/o/i;->e0:Landroid/widget/TextView;

    const/high16 p2, 0x41b00000    # 22.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2
    :cond_3
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

    const-string v1, "ExceptionFragment"

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

    const-string v1, "ExceptionFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/b/b/o/i;->i0:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iput-wide v0, p0, Le/b/b/o/i;->i0:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900f0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d4

    invoke-static {p1}, Le/b/b/p/b;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
