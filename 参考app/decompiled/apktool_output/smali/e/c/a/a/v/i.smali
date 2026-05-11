.class public Le/c/a/a/v/i;
.super Ld/h/l/a;
.source ""


# instance fields
.field public final synthetic d:Le/c/a/a/v/g;


# direct methods
.method public constructor <init>(Le/c/a/a/v/g;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/v/i;->d:Le/c/a/a/v/g;

    invoke-direct {p0}, Ld/h/l/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Ld/h/l/x/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/h/l/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Ld/h/l/x/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Le/c/a/a/v/i;->d:Le/c/a/a/v/g;

    .line 5
    iget-object p1, p1, Le/c/a/a/v/g;->j0:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/c/a/a/v/i;->d:Le/c/a/a/v/g;

    sget v0, Le/c/a/a/i;->mtrl_picker_toggle_to_year_selection:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/c/a/a/v/i;->d:Le/c/a/a/v/g;

    sget v0, Le/c/a/a/i;->mtrl_picker_toggle_to_day_selection:I

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->x(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ld/h/l/x/b;->k(Ljava/lang/CharSequence;)V

    return-void
.end method
