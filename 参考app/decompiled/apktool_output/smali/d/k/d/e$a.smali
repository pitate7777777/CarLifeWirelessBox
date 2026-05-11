.class public Ld/k/d/e$a;
.super Ld/k/d/o;
.source ""

# interfaces
.implements Ld/m/v;
.implements Ld/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/k/d/o<",
        "Ld/k/d/e;",
        ">;",
        "Ld/m/v;",
        "Ld/a/c;"
    }
.end annotation


# instance fields
.field public final synthetic i:Ld/k/d/e;


# direct methods
.method public constructor <init>(Ld/k/d/e;)V
    .locals 0

    iput-object p1, p0, Ld/k/d/e$a;->i:Ld/k/d/e;

    invoke-direct {p0, p1}, Ld/k/d/o;-><init>(Ld/k/d/e;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ld/k/d/e$a;->i:Ld/k/d/e;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()Ld/m/d;
    .locals 1

    iget-object v0, p0, Ld/k/d/e$a;->i:Ld/k/d/e;

    iget-object v0, v0, Ld/k/d/e;->k:Ld/m/i;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ld/k/d/e$a;->i:Ld/k/d/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Ld/k/d/e$a;->i:Ld/k/d/e;

    .line 1
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->i:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public s()Ld/m/u;
    .locals 1

    iget-object v0, p0, Ld/k/d/e$a;->i:Ld/k/d/e;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->s()Ld/m/u;

    move-result-object v0

    return-object v0
.end method
