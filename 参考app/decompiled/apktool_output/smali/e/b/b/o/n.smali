.class public Le/b/b/o/n;
.super Le/b/b/o/g;
.source ""


# static fields
.field public static h0:Le/b/b/o/n;


# instance fields
.field public d0:Landroid/widget/ImageButton;

.field public e0:Landroid/widget/TextView;

.field public f0:Landroid/view/View;

.field public g0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/b/b/o/g;-><init>()V

    return-void
.end method

.method public static E0()Le/b/b/o/n;
    .locals 1

    sget-object v0, Le/b/b/o/n;->h0:Le/b/b/o/n;

    if-nez v0, :cond_0

    new-instance v0, Le/b/b/o/n;

    invoke-direct {v0}, Le/b/b/o/n;-><init>()V

    sput-object v0, Le/b/b/o/n;->h0:Le/b/b/o/n;

    :cond_0
    sget-object v0, Le/b/b/o/n;->h0:Le/b/b/o/n;

    return-object v0
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

    const-string p2, "HelpMainFragment"

    invoke-static {p2, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0037

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090112

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Le/b/b/o/n;->d0:Landroid/widget/ImageButton;

    new-instance p2, Le/b/b/o/n$a;

    invoke-direct {p2, p0}, Le/b/b/o/n$a;-><init>(Le/b/b/o/n;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090247

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/b/b/o/n;->e0:Landroid/widget/TextView;

    const p2, 0x7f0f0088

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->x(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f09004e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090051

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090104

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/b/b/o/n;->f0:Landroid/view/View;

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090105

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/b/b/o/n;->g0:Landroid/view/View;

    iget-object p1, p0, Le/b/b/o/n;->f0:Landroid/view/View;

    new-instance p2, Le/b/b/o/n$b;

    invoke-direct {p2, p0}, Le/b/b/o/n$b;-><init>(Le/b/b/o/n;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Le/b/b/o/n;->g0:Landroid/view/View;

    new-instance p2, Le/b/b/o/n$c;

    invoke-direct {p2, p0}, Le/b/b/o/n$c;-><init>(Le/b/b/o/n;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const-string v1, "HelpMainFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
