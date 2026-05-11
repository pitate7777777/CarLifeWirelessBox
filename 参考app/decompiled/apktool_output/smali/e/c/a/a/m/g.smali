.class public Le/c/a/a/m/g;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Le/c/a/a/m/h;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/c/a/a/m/g;->b:I

    iput v0, p0, Le/c/a/a/m/g;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Le/c/a/a/m/g;->b:I

    iput p1, p0, Le/c/a/a/m/g;->c:I

    return-void
.end method


# virtual methods
.method public B()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/m/g;->a:Le/c/a/a/m/h;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/m/h;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    return-void
.end method

.method public D(I)Z
    .locals 3

    iget-object v0, p0, Le/c/a/a/m/g;->a:Le/c/a/a/m/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1
    iget-boolean v2, v0, Le/c/a/a/m/h;->f:Z

    if-eqz v2, :cond_0

    iget v2, v0, Le/c/a/a/m/h;->d:I

    if-eq v2, p1, :cond_0

    iput p1, v0, Le/c/a/a/m/h;->d:I

    invoke-virtual {v0}, Le/c/a/a/m/h;->a()V

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2
    :cond_1
    iput p1, p0, Le/c/a/a/m/g;->b:I

    return v1
.end method

.method public k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Le/c/a/a/m/g;->C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Le/c/a/a/m/g;->a:Le/c/a/a/m/h;

    if-nez p1, :cond_0

    new-instance p1, Le/c/a/a/m/h;

    invoke-direct {p1, p2}, Le/c/a/a/m/h;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/c/a/a/m/g;->a:Le/c/a/a/m/h;

    :cond_0
    iget-object p1, p0, Le/c/a/a/m/g;->a:Le/c/a/a/m/h;

    .line 1
    iget-object p2, p1, Le/c/a/a/m/h;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p1, Le/c/a/a/m/h;->b:I

    iget-object p2, p1, Le/c/a/a/m/h;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Le/c/a/a/m/h;->c:I

    .line 2
    iget-object p1, p0, Le/c/a/a/m/g;->a:Le/c/a/a/m/h;

    invoke-virtual {p1}, Le/c/a/a/m/h;->a()V

    iget p1, p0, Le/c/a/a/m/g;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p3, p0, Le/c/a/a/m/g;->a:Le/c/a/a/m/h;

    .line 3
    iget-boolean v0, p3, Le/c/a/a/m/h;->f:Z

    if-eqz v0, :cond_1

    iget v0, p3, Le/c/a/a/m/h;->d:I

    if-eq v0, p1, :cond_1

    iput p1, p3, Le/c/a/a/m/h;->d:I

    invoke-virtual {p3}, Le/c/a/a/m/h;->a()V

    .line 4
    :cond_1
    iput p2, p0, Le/c/a/a/m/g;->b:I

    :cond_2
    iget p1, p0, Le/c/a/a/m/g;->c:I

    if-eqz p1, :cond_4

    iget-object p3, p0, Le/c/a/a/m/g;->a:Le/c/a/a/m/h;

    .line 5
    iget-boolean v0, p3, Le/c/a/a/m/h;->g:Z

    if-eqz v0, :cond_3

    iget v0, p3, Le/c/a/a/m/h;->e:I

    if-eq v0, p1, :cond_3

    iput p1, p3, Le/c/a/a/m/h;->e:I

    invoke-virtual {p3}, Le/c/a/a/m/h;->a()V

    .line 6
    :cond_3
    iput p2, p0, Le/c/a/a/m/g;->c:I

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
