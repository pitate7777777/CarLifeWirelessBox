.class public final Le/c/a/a/v/r;
.super Le/c/a/a/v/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/a/a/v/x<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public a0:I

.field public b0:Le/c/a/a/v/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/v/d<",
            "TS;>;"
        }
    .end annotation
.end field

.field public c0:Le/c/a/a/v/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/a/a/v/x;-><init>()V

    return-void
.end method


# virtual methods
.method public L(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->L(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->j:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/c/a/a/v/r;->a0:I

    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Le/c/a/a/v/d;

    iput-object v0, p0, Le/c/a/a/v/r;->b0:Le/c/a/a/v/d;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Le/c/a/a/v/a;

    iput-object p1, p0, Le/c/a/a/v/r;->c0:Le/c/a/a/v/a;

    return-void
.end method

.method public P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Le/c/a/a/v/r;->a0:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v3, p0, Le/c/a/a/v/r;->b0:Le/c/a/a/v/d;

    iget-object v7, p0, Le/c/a/a/v/r;->c0:Le/c/a/a/v/a;

    new-instance v8, Le/c/a/a/v/r$a;

    invoke-direct {v8, p0}, Le/c/a/a/v/r$a;-><init>(Le/c/a/a/v/r;)V

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v3 .. v8}, Le/c/a/a/v/d;->q(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Le/c/a/a/v/a;Le/c/a/a/v/w;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Le/c/a/a/v/r;->a0:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Le/c/a/a/v/r;->b0:Le/c/a/a/v/d;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Le/c/a/a/v/r;->c0:Le/c/a/a/v/a;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
