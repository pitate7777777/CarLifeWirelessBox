.class public Le/c/a/a/c0/c;
.super Le/c/a/a/c0/d;
.source ""


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Le/c/a/a/c0/d;

.field public final synthetic c:Le/c/a/a/c0/b;


# direct methods
.method public constructor <init>(Le/c/a/a/c0/b;Landroid/text/TextPaint;Le/c/a/a/c0/d;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/c0/c;->c:Le/c/a/a/c0/b;

    iput-object p2, p0, Le/c/a/a/c0/c;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Le/c/a/a/c0/c;->b:Le/c/a/a/c0/d;

    invoke-direct {p0}, Le/c/a/a/c0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/c0/c;->b:Le/c/a/a/c0/d;

    invoke-virtual {v0, p1}, Le/c/a/a/c0/d;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Le/c/a/a/c0/c;->c:Le/c/a/a/c0/b;

    iget-object v1, p0, Le/c/a/a/c0/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Le/c/a/a/c0/b;->d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Le/c/a/a/c0/c;->b:Le/c/a/a/c0/d;

    invoke-virtual {v0, p1, p2}, Le/c/a/a/c0/d;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
