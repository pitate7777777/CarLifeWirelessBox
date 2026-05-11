.class public Ld/h/i/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ld/h/i/i;

.field public final synthetic f:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ld/h/i/c;Ld/h/i/i;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p2, p0, Ld/h/i/a;->e:Ld/h/i/i;

    iput-object p3, p0, Ld/h/i/a;->f:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/h/i/a;->e:Ld/h/i/i;

    iget-object v1, p0, Ld/h/i/a;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ld/h/i/i;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
