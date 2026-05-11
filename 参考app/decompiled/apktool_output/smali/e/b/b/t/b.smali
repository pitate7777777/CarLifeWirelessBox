.class public Le/b/b/t/b;
.super Le/b/b/t/a;
.source ""


# instance fields
.field public m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Le/b/b/t/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/b/b/t/b;->m:Landroid/widget/TextView;

    .line 1
    iget-object v0, p0, Le/b/b/t/a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Le/b/b/t/a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Le/b/b/t/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/b/b/t/a;->b(Ljava/lang/String;)Le/b/b/t/a;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Le/b/b/t/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/b/b/t/a;->c(Ljava/lang/String;)Le/b/b/t/a;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Le/b/b/t/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/b/b/t/a;->d(Ljava/lang/String;)Le/b/b/t/a;

    return-object p0
.end method
