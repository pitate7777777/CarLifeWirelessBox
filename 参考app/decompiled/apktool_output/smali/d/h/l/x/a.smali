.class public final Ld/h/l/x/a;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field public final e:I

.field public final f:Ld/h/l/x/b;

.field public final g:I


# direct methods
.method public constructor <init>(ILd/h/l/x/b;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Ld/h/l/x/a;->e:I

    iput-object p2, p0, Ld/h/l/x/a;->f:Ld/h/l/x/b;

    iput p3, p0, Ld/h/l/x/a;->g:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Ld/h/l/x/a;->e:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Ld/h/l/x/a;->f:Ld/h/l/x/b;

    iget v1, p0, Ld/h/l/x/a;->g:I

    .line 1
    iget-object v0, v0, Ld/h/l/x/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    return-void
.end method
