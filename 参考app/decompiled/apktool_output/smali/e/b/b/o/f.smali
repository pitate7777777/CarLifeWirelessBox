.class public Le/b/b/o/f;
.super Le/b/b/o/g;
.source ""


# static fields
.field public static f0:Le/b/b/o/f;


# instance fields
.field public d0:Landroid/widget/ImageButton;

.field public e0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/b/b/o/g;-><init>()V

    return-void
.end method


# virtual methods
.method public P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Le/b/b/o/g;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "onCreateView"

    aput-object p3, p1, p2

    const-string p2, "AuthorizationRequestHelpFragment"

    invoke-static {p2, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0033

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090112

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Le/b/b/o/f;->d0:Landroid/widget/ImageButton;

    new-instance p2, Le/b/b/o/f$a;

    invoke-direct {p2, p0}, Le/b/b/o/f$a;-><init>(Le/b/b/o/f;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090247

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/b/b/o/f;->e0:Landroid/widget/TextView;

    const p2, 0x7f0f0027

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->x(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    const-string v1, "AuthorizationRequestHelpFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
