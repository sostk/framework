.class public Lorg/apache/commons/lang3/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private variableResolver:Lorg/apache/commons/lang3/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "${"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 116
    const-string v0, "}"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 209
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 234
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 270
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 271
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 272
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V
    .locals 0
    .param p2, "prefixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 287
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 288
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 289
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 290
    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "varName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p2, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    return-void

    .line 696
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    .line 697
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 698
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 699
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 700
    const-string v1, "->"

    invoke-virtual {v0, p2, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 701
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueProperties"    # Ljava/util/Properties;

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    :goto_0
    return-object v4

    .line 182
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v3, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 184
    .local v1, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 185
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, "propName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "propValue":Ljava/lang/String;
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;

    .prologue
    .line 200
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrLookup;->systemPropertiesLookup()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I
    .locals 26
    .param p1, "buf"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 579
    .local p4, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v16

    .line 580
    .local v16, "prefixMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v19

    .line 581
    .local v19, "suffixMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getEscapeChar()C

    move-result v12

    .line 583
    .local v12, "escape":C
    if-nez p4, :cond_1

    const/16 v20, 0x1

    .line 584
    .local v20, "top":Z
    :goto_0
    const/4 v5, 0x0

    .line 585
    .local v5, "altered":Z
    const/4 v13, 0x0

    .line 586
    .local v13, "lengthChange":I
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 587
    .local v9, "chars":[C
    add-int v6, p2, p3

    .line 588
    .local v6, "bufEnd":I
    move/from16 v15, p2

    .line 589
    .local v15, "pos":I
    :cond_0
    :goto_1
    if-lt v15, v6, :cond_2

    .line 680
    if-eqz v20, :cond_c

    .line 681
    if-eqz v5, :cond_b

    const/16 v24, 0x1

    .line 683
    :goto_2
    return v24

    .line 583
    .end local v5    # "altered":Z
    .end local v6    # "bufEnd":I
    .end local v9    # "chars":[C
    .end local v13    # "lengthChange":I
    .end local v15    # "pos":I
    .end local v20    # "top":Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 590
    .restart local v5    # "altered":Z
    .restart local v6    # "bufEnd":I
    .restart local v9    # "chars":[C
    .restart local v13    # "lengthChange":I
    .restart local v15    # "pos":I
    .restart local v20    # "top":Z
    :cond_2
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v9, v15, v1, v6}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v17

    .line 592
    .local v17, "startMatchLen":I
    if-nez v17, :cond_3

    .line 593
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 596
    :cond_3
    move/from16 v0, p2

    if-le v15, v0, :cond_4

    add-int/lit8 v24, v15, -0x1

    aget-char v24, v9, v24

    move/from16 v0, v24

    if-ne v0, v12, :cond_4

    .line 598
    add-int/lit8 v24, v15, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteCharAt(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 599
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 600
    add-int/lit8 v13, v13, -0x1

    .line 601
    const/4 v5, 0x1

    .line 602
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 605
    :cond_4
    move/from16 v18, v15

    .line 606
    .local v18, "startPos":I
    add-int v15, v15, v17

    .line 607
    const/4 v10, 0x0

    .line 608
    .local v10, "endMatchLen":I
    const/4 v14, 0x0

    .line 609
    .local v14, "nestedVarCount":I
    :goto_3
    if-ge v15, v6, :cond_0

    .line 610
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 611
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v9, v15, v1, v6}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v10

    if-eqz v10, :cond_5

    .line 614
    add-int/lit8 v14, v14, 0x1

    .line 615
    add-int/2addr v15, v10

    .line 616
    goto :goto_3

    .line 619
    :cond_5
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v9, v15, v1, v6}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v10

    .line 621
    if-nez v10, :cond_6

    .line 622
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 625
    :cond_6
    if-nez v14, :cond_a

    .line 626
    new-instance v22, Ljava/lang/String;

    .line 627
    add-int v24, v18, v17

    sub-int v25, v15, v18

    .line 628
    sub-int v25, v25, v17

    .line 626
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v9, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 629
    .local v22, "varName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 630
    new-instance v7, Lorg/apache/commons/lang3/text/StrBuilder;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .local v7, "bufName":Lorg/apache/commons/lang3/text/StrBuilder;
    const/16 v24, 0x0

    invoke-virtual {v7}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 632
    invoke-virtual {v7}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 634
    .end local v7    # "bufName":Lorg/apache/commons/lang3/text/StrBuilder;
    :cond_7
    add-int/2addr v15, v10

    .line 635
    move v11, v15

    .line 638
    .local v11, "endPos":I
    if-nez p4, :cond_8

    .line 639
    new-instance p4, Ljava/util/ArrayList;

    .end local p4    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p4 .. p4}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .restart local p4    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v24, Ljava/lang/String;

    .line 641
    move-object/from16 v0, v24

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v9, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 640
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 646
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v11}, Lorg/apache/commons/lang3/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v23

    .line 651
    .local v23, "varValue":Ljava/lang/String;
    if-eqz v23, :cond_9

    .line 653
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v21

    .line 654
    .local v21, "varLen":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v11, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 655
    const/4 v5, 0x1

    .line 656
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v21

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v8

    .line 658
    .local v8, "change":I
    add-int v24, v8, v21

    .line 659
    sub-int v25, v11, v18

    .line 658
    sub-int v8, v24, v25

    .line 660
    add-int/2addr v15, v8

    .line 661
    add-int/2addr v6, v8

    .line 662
    add-int/2addr v13, v8

    .line 663
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 669
    .end local v8    # "change":I
    .end local v21    # "varLen":I
    :cond_9
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 672
    .end local v11    # "endPos":I
    .end local v22    # "varName":Ljava/lang/String;
    .end local v23    # "varValue":Ljava/lang/String;
    :cond_a
    add-int/lit8 v14, v14, -0x1

    .line 673
    add-int/2addr v15, v10

    goto/16 :goto_3

    .line 681
    .end local v10    # "endMatchLen":I
    .end local v14    # "nestedVarCount":I
    .end local v17    # "startMatchLen":I
    .end local v18    # "startPos":I
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_2

    :cond_c
    move/from16 v24, v13

    .line 683
    goto/16 :goto_2
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 1

    .prologue
    .line 737
    iget-char v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 1

    .prologue
    .line 910
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    const/4 v1, 0x0

    .line 469
    :goto_0
    return-object v1

    .line 467
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 468
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 469
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 301
    if-nez p1, :cond_1

    .line 302
    const/4 p1, 0x0

    .line 308
    .end local p1    # "source":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 304
    .restart local p1    # "source":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const/4 v1, 0x0

    .line 331
    :goto_0
    return-object v1

    .line 327
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 328
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 389
    :goto_0
    return-object v1

    .line 387
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 388
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 389
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 407
    const/4 v1, 0x0

    .line 411
    :goto_0
    return-object v1

    .line 409
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 410
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 411
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lorg/apache/commons/lang3/text/StrBuilder;

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    const/4 v1, 0x0

    .line 429
    :goto_0
    return-object v1

    .line 427
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 428
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 429
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 446
    if-nez p1, :cond_0

    .line 447
    const/4 v1, 0x0

    .line 451
    :goto_0
    return-object v1

    .line 449
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 450
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 451
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace([C)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # [C

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    const/4 v1, 0x0

    .line 349
    :goto_0
    return-object v1

    .line 347
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    array-length v2, p1

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 348
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 349
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    const/4 v1, 0x0

    .line 371
    :goto_0
    return-object v1

    .line 369
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 370
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 371
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v0, 0x0

    .line 482
    if-nez p1, :cond_0

    .line 485
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    goto :goto_0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 502
    if-nez p1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v1

    .line 505
    :cond_1
    new-instance v2, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 506
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    add-int v1, p2, p3

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .locals 2
    .param p1, "source"    # Lorg/apache/commons/lang3/text/StrBuilder;

    .prologue
    const/4 v0, 0x0

    .line 522
    if-nez p1, :cond_0

    .line 525
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    goto :goto_0
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .locals 1
    .param p1, "source"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 541
    if-nez p1, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    goto :goto_0
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "buf"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I

    .prologue
    .line 722
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    .line 723
    .local v0, "resolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    if-nez v0, :cond_0

    .line 724
    const/4 v1, 0x0

    .line 726
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .locals 0
    .param p1, "enableSubstitutionInVariables"    # Z

    .prologue
    .line 924
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 925
    return-void
.end method

.method public setEscapeChar(C)V
    .locals 0
    .param p1, "escapeCharacter"    # C

    .prologue
    .line 748
    iput-char p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    .line 749
    return-void
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "prefix"    # C

    .prologue
    .line 796
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 810
    if-nez p1, :cond_0

    .line 811
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 2
    .param p1, "prefixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;

    .prologue
    .line 778
    if-nez p1, :cond_0

    .line 779
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 782
    return-object p0
.end method

.method public setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 898
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    .line 899
    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "suffix"    # C

    .prologue
    .line 861
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 875
    if-nez p1, :cond_0

    .line 876
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 2
    .param p1, "suffixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;

    .prologue
    .line 843
    if-nez p1, :cond_0

    .line 844
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 847
    return-object p0
.end method

.method protected substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .locals 1
    .param p1, "buf"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
