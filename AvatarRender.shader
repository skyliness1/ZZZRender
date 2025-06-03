Shader"ZZZ/AvatarRender"
{
    Properties
    {
        [KeywordEnum(None,Face,Eye,Body)] _Domain("材质域",Float)=0
        
        [Header(Shader Option)]
        [Space(10)]
        [Enum(UnityEngine.Rendering.BlendOp)] _BlendOp("混合运算符",Float)=0
        [Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend("混合源运算因子",Float)=1
        [Enum(UnityEngine.Rendering.BlendMode)] _DstBlend("混合目标运算因子",Float)=0
        [Enum(UnityEngine.Rendering.CullMode)] _CullMode("剔除模式",Float)=2
        [Enum(Off,0,On,1)] _ZWriteMode("深度写入",Float)=1
        [Enum(UnityEngine.Rendering.CompareFunction)] _ZTestMode("深度测试模式",Float)=4
        [Enum(UnityEngine.Rendering.ColorWriteMask)] _ColorMask("颜色写入掩码",Float)=15
        
        [Header(Stencil Test Settings)]
        [Space(10)]
        [Enum(UnityEngine.Rendering.CompareFunction)] _StencilCompareFunction("模板测试模式",Float)=8
        [IntRange] _Stencil("模板测试参考值",Range(0,255))=0
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilPass("模板测试通过操作",Float)=1
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilFail("模板测试失败操作",Float)=1
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilZFail("模板测试深度失败操作",Float)=1
        
        [Header(SRP Default)]
        [Space(10)]
        [Toggle(_SRP_DEFAULT_PASS)] _SRPDefaultPass("SRP Default Pass",Float)=0
        [Enum(UnityEngine.Rendering.BlendMode)] _SRPDefaultSrcBlend("SRP Default Pass 混合源运算因子",Float)=1
        [Enum(UnityEngine.Rendering.BlendMode)] _SRPDefaultDstBlend("SRP Default Pass 混合目标运算因子",Float)=0
        [Enum(UnityEngine.Rendering.BlendOp)] _SRPDefaultBlendOp("SRP Default Pass 混合运算符",Float)=0
        [IntRange] _SRPStencilRef("SRP Default Pass 模板测试参考值",Range(0,255))=0
        [Enum(UnityEngine.Rendering.CompareFunction)] _SRPStencilCompareFunction("SRP Default Pass 模板测试模式",Float)=8
        [Enum(UnityEngine.Rendering.StencilOp)] _SRPStencilPass("SRP Default Pass 模板测试通过操作",Float)=0
        [Enum(UnityEngine.Rendering.StencilOp)] _SRPStencilFail("SRP Default Pass 模板测试失败操作",Float)=0
        [Enum(UnityEngine.Rendering.StencilOp)] _SRPStencilZFail("SRP Default Pass 模板测试深度失败操作",Float)=0
        
        [Header(Textures)]
        [Space(10)]
        _Color("主纹理颜色修改",Color)=(1,1,1,1)
        [NoScaleOffset] _MainTex("基本色纹理",2D) = "white" {}
        [NoScaleOffset] _NormalTex("法线纹理",2D)= " bump "{}
        [NoScaleOffset] _FaceLightTex("面部光照纹理",2D) = "white" {}
        [NoScaleOffset] _OtherDataTex1("其他数据纹理_1",2D) = "white" {}
        [NoScaleOffset] _OtherDataTex2("其他数据纹理_2",2D) = "white" {}
        [NoScaleOffset] _MatCapTex1("MatCap纹理_1",2D) = "white" {}
        [NoScaleOffset] _MatCapTex2("MatCap纹理_2",2D) = "white" {}
        [NoScaleOffset] _MatCapTex3("MatCap纹理_3",2D) = "white" {}
        [NoScaleOffset] _MatCapTex4("MatCap纹理_4",2D) = "white" {}
        [NoScaleOffset] _MatCapTex5("MatCap纹理_5",2D) = "white" {}
        
        [Header(Outline)]
        [Space(10)]
        [Toggle(_OUTLINE_PASS)] _Outline("描边启用",Float)=0
        _OutlineWidth("描边宽度",Range(0,5))=1
        _OutlineColor1("材质ID1：描边颜色",Color)=(0,0,0,1)
        _OutlineColor2("材质ID2：描边颜色",Color)=(0,0,0,1)
        _OutlineColor3("材质ID3：描边颜色",Color)=(0,0,0,1)
        _OutlineColor4("材质ID4：描边颜色",Color)=(0,0,0,1)
        _OutlineColor5("材质ID5：描边颜色",Color)=(0,0,0,1)
        _OutlineZOffset("描边深度偏移",Range(0,1))=0
        
        [Header(Light Shading)]
        [Space(10)]
        _BumpScale("法线缩放",Range(0,2))=1
        _AlbedoSmoothness("基本色光滑度",Range(0,1))=1
        [Space(10)]
        _ShadowColor1("材质ID1：暗部颜色",Color)=(0,0,0,1)
        _ShadowColor2("材质ID2：暗部颜色",Color)=(0,0,0,1)
        _ShadowColor3("材质ID3：暗部颜色",Color)=(0,0,0,1)
        _ShadowColor4("材质ID4：暗部颜色",Color)=(0,0,0,1)
        _ShadowColor5("材质ID5：暗部颜色",Color)=(0,0,0,1)
        [Space(5)]
        _ShallowColor1("材质ID1：灰部颜色",Color)=(0,0,0,1)
        _ShallowColor2("材质ID2：灰部颜色",Color)=(0,0,0,1)
        _ShallowColor3("材质ID3：灰部颜色",Color)=(0,0,0,1)
        _ShallowColor4("材质ID4：灰部颜色",Color)=(0,0,0,1)
        _ShallowColor5("材质ID5：灰部颜色",Color)=(0,0,0,1)
        [Space(5)]
        _PostShadowFadeTint("叠加暗部渐变颜色",Color)=(0,0,0,1)
        _PostShadowTint("叠加暗部颜色",Color)=(0,0,0,1)
        _PostShallowFadeTint("叠加灰部渐变颜色",Color)=(0,0,0,1)
        _PostShallowTint("叠加灰部颜色",Color)=(0,0,0,1)
        _PostSSSTint("叠加次表面散射颜色",Color)=(0,0,0,1)
        _PostFrontTint("叠加亮部颜色",Color)=(0,0,0,1)
        
        [Header(Screen Space Shadow)]
        [Space(10)]
        [Toggle(_SCREEN_SPACE_SHADOW)] _ScreenSpaceShadow("屏幕空间阴影启用",Float)=0
        _ScreenSpaceShadowWidth("屏幕空间阴影宽度",Range(0,1))=0.2
        _ScreenSpaceShadowThreshold("屏幕空间阴影阈值",Range(0,1))=0.015
        _ScreenSpaceShadowFadeOut("屏幕空间阴影渐变",Range(0,10))=0.2
        
        [Header(Face SDF Shadow Setting)]
        [Space(10)]
        _FaceCenter("面部中心",Vector)=(0,0,0,0)
        _FaceForward("面部正向",Vector)=(0,0,0,0)
        _FaceRight("面部右向",Vector)=(0,0,0,0)
        _OutlineColor("鼻线颜色",Color)=(0,0,0,1)
        _NoiseLineLkDnDisplace("鼻线俯仰偏移",Range(0,1))=0.5
        _NoiseLineHorizontalDisplace("鼻线水平偏移",Range(0,1))=0.5
        
        [Header(MatCap Settings)]
        [Space(10)]
        [Toggle(_MATCAP_ON)] _MatCapOn("MatCap启用",Float)=0
        [Spcae(3)]
        [Toggle] _MatCapRefract1("材质ID1:MatCap反射启用",Float)=0
        [Toggle] _MatCapRefract2("材质ID2:MatCap反射启用",Float)=0
        [Toggle] _MatCapRefract3("材质ID3:MatCap反射启用",Float)=0
        [Toggle] _MatCapRefract4("材质ID4:MatCap反射启用",Float)=0
        [Toggle] _MatCapRefract5("材质ID5:MatCap反射启用",Float)=0
        [Space(5)]
        _RefractParams1("材质ID1:MatCap反射参数",Vector)=(0,0,0,0)
        _RefractParams2("材质ID2:MatCap反射参数",Vector)=(0,0,0,0)
        _RefractParams3("材质ID3:MatCap反射参数",Vector)=(0,0,0,0)
        _RefractParams4("材质ID4:MatCap反射参数",Vector)=(0,0,0,0)
        _RefractParams5("材质ID5:MatCap反射参数",Vector)=(0,0,0,0)
        [Space(5)]
        _RefractDepth1("材质ID1:MatCap反射深度",Range(0,1))=0
        _RefractDepth2("材质ID2:MatCap反射深度",Range(0,1))=0
        _RefractDepth3("材质ID3:MatCap反射深度",Range(0,1))=0
        _RefractDepth4("材质ID4:MatCap反射深度",Range(0,1))=0
        _RefractDepth5("材质ID5:MatCap反射深度",Range(0,1))=0
        [Space(5)]
        _MatCapColor1("材质ID1:MatCap染色",Color)=(1,1,1,1)
        _MatCapColor2("材质ID2:MatCap染色",Color)=(1,1,1,1)
        _MatCapColor3("材质ID3:MatCap染色",Color)=(1,1,1,1)
        _MatCapColor4("材质ID4:MatCap染色",Color)=(1,1,1,1)
        _MatCapColor5("材质ID5:MatCap染色",Color)=(1,1,1,1)
        [Space(5)]
        _MatCapAlphaBurst1("材质ID1:MatCap混合放大系数",Range(0,5))=0
        _MatCapAlphaBurst2("材质ID2:MatCap混合放大系数",Range(0,5))=0
        _MatCapAlphaBurst3("材质ID3:MatCap混合放大系数",Range(0,5))=0
        _MatCapAlphaBurst4("材质ID4:MatCap混合放大系数",Range(0,5))=0
        _MatCapAlphaBurst5("材质ID5:MatCap混合放大系数",Range(0,5))=0
        [Space(5)]
        _MatCapColorBurst1("材质ID1:MatCap染色放大系数",Range(0,5))=0
        _MatCapColorBurst2("材质ID2:MatCap染色放大系数",Range(0,5))=0
        _MatCapColorBurst3("材质ID3:MatCap染色放大系数",Range(0,5))=0
        _MatCapColorBurst4("材质ID4:MatCap染色放大系数",Range(0,5))=0
        _MatCapColorBurst5("材质ID5:MatCap染色放大系数",Range(0,5))=0
        [Space(5)]
        _MatCapBlendMode1("材质ID1:MatCap混合模式 0:Alpha混合 1:加法混合 2：叠加混合",Float)=0
        _MatCapBlendMode2("材质ID2:MatCap混合模式 0:Alpha混合 1:加法混合 2：叠加混合",Float)=0
        _MatCapBlendMode3("材质ID3:MatCap混合模式 0:Alpha混合 1:加法混合 2：叠加混合",Float)=0
        _MatCapBlendMode4("材质ID4:MatCap混合模式 0:Alpha混合 1:加法混合 2：叠加混合",Float)=0
        _MatCapBlendMode5("材质ID5:MatCap混合模式 0:Alpha混合 1:加法混合 2：叠加混合",Float)=0
        
        [Header(Gamma Settings)]
        [Space(10)]
        [Toggle(_GAMMA_ON)] _GammaOn("伽马启用",Float)=0
        
        [Header(Specular Settings)]
        [Space(10)]
        _SpecularIntensity("高光强度",Range(0,1))=1
        _MatMetallic("金属度",Range(0,1))=1
        _MatSmoothness("光滑度",Range(0,1))=1
        _HeadSphereRange("头发球状法线钳制范围",Range(-1,1))=1
        [Space(10)]
        [Toggle] _HighLightShape1("材质ID1:高光NPR模型使用",Float)=0
        [Toggle] _HighLightShape2("材质ID2:高光NPR模型使用",Float)=0
        [Toggle] _HighLightShape3("材质ID3:高光NPR模型使用",Float)=0
        [Toggle] _HighLightShape4("材质ID4:高光NPR模型使用",Float)=0
        [Toggle] _HighLightShape5("材质ID5:高光NPR模型使用",Float)=0
        [Space(5)]
        _ShapeSoftness1("材质ID1:NPR高光软硬度",Range(0,1))=0
        _ShapeSoftness2("材质ID2:NPR高光软硬度",Range(0,1))=0
        _ShapeSoftness3("材质ID3:NPR高光软硬度",Range(0,1))=0
        _ShapeSoftness4("材质ID4:NPR高光软硬度",Range(0,1))=0
        _ShapeSoftness5("材质ID5:NPR高光软硬度",Range(0,1))=0
        [Space(5)]
        _SpecularRange1("材质ID1:高光范围",Range(0,1))=0
        _SpecularRange2("材质ID2:高光范围",Range(0,1))=0
        _SpecularRange3("材质ID3:高光范围",Range(0,1))=0
        _SpecularRange4("材质ID4:高光范围",Range(0,1))=0
        _SpecularRange5("材质ID5:高光范围",Range(0,1))=0
        [Space(5)]
        _ToonSpecular1("材质ID1:卡通高光系数",Range(0,1))=0
        _ToonSpecular2("材质ID2:卡通高光系数",Range(0,1))=0
        _ToonSpecular3("材质ID3:卡通高光系数",Range(0,1))=0
        _ToonSpecular4("材质ID4:卡通高光系数",Range(0,1))=0
        _ToonSpecular5("材质ID5:卡通高光系数",Range(0,1))=0
        [Space(5)]
        _ModelSize1("材质ID1:模型放大系数",Range(0,1))=0
        _ModelSize2("材质ID2:模型放大系数",Range(0,1))=0
        _ModelSize3("材质ID3:模型放大系数",Range(0,1))=0
        _ModelSize4("材质ID4:模型放大系数",Range(0,1))=0
        _ModelSize5("材质ID5:模型放大系数",Range(0,1))=0
        [Space(5)]
        _SpecularColor1("材质ID1:高光颜色",Color)=(1,1,1,1)
        _SpecularColor2("材质ID2:高光颜色",Color)=(1,1,1,1)
        _SpecularColor3("材质ID3:高光颜色",Color)=(1,1,1,1)
        _SpecularColor4("材质ID4:高光颜色",Color)=(1,1,1,1)
        _SpecularColor5("材质ID5:高光颜色",Color)=(1,1,1,1)
        
        [Header(Ambient Settings)]
        _AmbientColorIntensity("环境光强度",Range(0,1))=1
        
        [Header(Rim Light Settings)]
        [Space(10)]
        [Toggle(_SCREEN_SPACE_RIM)] _ScreenSpaceRim("屏幕空间边缘光启用",Float)=0
        _ScreenSpaceRimWidth("屏幕空间边缘光宽度",Range(0,1))=0.2
        _ScreenSpaceRimThreshold("屏幕空间边缘光阈值",Range(0,1))=0.015
        _ScreenSpaceRimFadeOut("屏幕空间边缘光渐变",Range(0,10))=0.2
        _ScreenSpaceRimBrightness("屏幕空间边缘光亮度",Range(0,5))=1
        [Space(5)]
        [Enum(s0,0,s1,1,s2,2,s3,3,s4,4,s5,5)] _SkinMaterialID("皮肤材质ID",Float)=0
        [Space(5)]
        _SunColor1("材质ID1:太阳光颜色",Color)=(1,1,1,1)
        _SunColor2("材质ID2:太阳光颜色",Color)=(1,1,1,1)
        _SunColor3("材质ID3:太阳光颜色",Color)=(1,1,1,1)
        _SunColor4("材质ID4:太阳光颜色",Color)=(1,1,1,1)
        _SunColor5("材质ID5:太阳光颜色",Color)=(1,1,1,1)
        [Space(5)]
        _RimGlowColor1("材质ID1:边缘光染色",Color)=(1,1,1,1)
        _RimGlowColor2("材质ID2:边缘光染色",Color)=(1,1,1,1)
        _RimGlowColor3("材质ID3:边缘光染色",Color)=(1,1,1,1)
        _RimGlowColor4("材质ID4:边缘光染色",Color)=(1,1,1,1)
        _RimGlowColor5("材质ID5:边缘光染色",Color)=(1,1,1,1)
        
        
        [Space(10)]
        _AlphaClip("Alpha Clip",Range(0,1))=0
    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="UniversalRenderPipeline"
            "RenderType"="Opaque"
        }
        LOD 100
        
        HLSLINCLUDE

        #pragma shader_feature_local _DOMAIN_FACE
        #pragma shader_feature_local _DOMAIN_EYE
        #pragma shader_feature_local _DOMAIN_BODY
        #pragma shader_feature_local _SCREEN_SPACE_SHADOW
        #pragma shader_feature_local _MATCAP_ON
        #pragma shader_feature_local _GAMMA_ON
        #pragma shader_feature_local _SCREEN_SPACE_RIM

        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS
        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS_SCREEN

        #pragma multi_compile_fragment _ _LIGHT_LAYERS
        #pragma multi_compile_fragment _ _LIGHT_COOKIES
        #pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
        #pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
        #pragma multi_compile_fragment _ _SHADOWS_SOFT
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION

        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareDepthTexture.hlsl"

        #define DEFINE_SELECT(TYPE)\
            TYPE select(int id,TYPE e0,TYPE e1,TYPE e2,TYPE e3,TYPE e4){return TYPE(id>0?(id>1?(id>2?(id>3?e4:e3):e2):e1):e0) ;}\
            TYPE##2 select(int id,TYPE##2 e0,TYPE##2 e1,TYPE##2 e2,TYPE##2 e3,TYPE##2 e4){return TYPE##2(id>0?(id>1?(id>2?(id>3?e4:e3):e2):e1):e0) ;}\
            TYPE##3 select(int id,TYPE##3 e0,TYPE##3 e1,TYPE##3 e2,TYPE##3 e3,TYPE##3 e4){return TYPE##3(id>0?(id>1?(id>2?(id>3?e4:e3):e2):e1):e0) ;}\
            TYPE##4 select(int id,TYPE##4 e0,TYPE##4 e1,TYPE##4 e2,TYPE##4 e3,TYPE##4 e4){return TYPE##4(id>0?(id>1?(id>2?(id>3?e4:e3):e2):e1):e0) ;}

        DEFINE_SELECT(bool)
        DEFINE_SELECT(uint)
        DEFINE_SELECT(int)
        DEFINE_SELECT(float)
        DEFINE_SELECT(half)

        #define DEFINE_MINMAX3(TYPE)\
            TYPE min3(TYPE a,TYPE b,TYPE c){return TYPE(min(min(a,b),c));}\
            TYPE##2 min3(TYPE##2 a,TYPE##2 b,TYPE##2 c){return TYPE##2(min(min(a,b),c));}\
            TYPE##3 min3(TYPE##3 a,TYPE##3 b,TYPE##3 c){return TYPE##3(min(min(a,b),c));}\
            TYPE##4 min3(TYPE##4 a,TYPE##4 b,TYPE##4 c){return TYPE##4(min(min(a,b),c));}\
            TYPE max3(TYPE a,TYPE b,TYPE c){return TYPE(max(max(a,b),c));}\
            TYPE##2 max3(TYPE##2 a,TYPE##2 b,TYPE##2 c){return TYPE##2(max(max(a,b),c));}\
            TYPE##3 max3(TYPE##3 a,TYPE##3 b,TYPE##3 c){return TYPE##3(max(max(a,b),c));}\
            TYPE##4 max3(TYPE##4 a,TYPE##4 b,TYPE##4 c){return TYPE##4(max(max(a,b),c));}

        DEFINE_MINMAX3(bool)
        DEFINE_MINMAX3(uint)
        DEFINE_MINMAX3(int)
        DEFINE_MINMAX3(float)
        DEFINE_MINMAX3(half)

        #define DEFINE_POW(TYPE)\
            TYPE pow2(TYPE x){return TYPE (x*x);}\
            TYPE##2 pow2(TYPE##2 x){return TYPE##2 (x*x);}\
            TYPE##3 pow2(TYPE##3 x){return TYPE##3 (x*x);}\
            TYPE##4 pow2(TYPE##4 x){return TYPE##4 (x*x);}\
            TYPE pow3(TYPE x){return TYPE (x*x*x);}\
            TYPE##2 pow3(TYPE##2 x){return TYPE##2 (x*x*x);}\
            TYPE##3 pow3(TYPE##3 x){return TYPE##3 (x*x*x);}\
            TYPE##4 pow3(TYPE##4 x){return TYPE##4 (x*x*x);}\
            TYPE pow4(TYPE x){TYPE xx=x*x;return TYPE (xx*xx);}\
            TYPE##2 pow4(TYPE##2 x){TYPE##2 xx=x*x;return TYPE##2 (xx*xx);}\
            TYPE##3 pow4(TYPE##3 x){TYPE##3 xx=x*x;return TYPE##3 (xx*xx);}\
            TYPE##4 pow4(TYPE##4 x){TYPE##4 xx=x*x;return TYPE##4 (xx*xx);}\
            TYPE pow5(TYPE x){TYPE xx=x*x;return TYPE (xx*xx*x);}\
            TYPE##2 pow5(TYPE##2 x){TYPE##2 xx=x*x;return TYPE##2 (xx*xx*x);}\
            TYPE##3 pow5(TYPE##3 x){TYPE##3 xx=x*x;return TYPE##3 (xx*xx*x);}\
            TYPE##4 pow5(TYPE##4 x){TYPE##4 xx=x*x;return TYPE##4 (xx*xx*x);}\
            TYPE pow6(TYPE x){TYPE xx=x*x;return TYPE (xx*xx*xx);}\
            TYPE##2 pow6(TYPE##2 x){TYPE##2 xx=x*x;return TYPE##2 (xx*xx*xx);}\
            TYPE##3 pow6(TYPE##3 x){TYPE##3 xx=x*x;return TYPE##3 (xx*xx*xx);}\
            TYPE##4 pow6(TYPE##4 x){TYPE##4 xx=x*x;return TYPE##4 (xx*xx*xx);}

        DEFINE_POW(bool)
        DEFINE_POW(uint)
        DEFINE_POW(int)
        DEFINE_POW(float)
        DEFINE_POW(half)
        

        CBUFFER_START(UnityPerMaterial)

        float4 _MainTex_ST;
        float4 _Color;

        float _BumpScale;
        float _AlbedoSmoothness;
        float4 _ShadowColor1;
        float4 _ShadowColor2;
        float4 _ShadowColor3;
        float4 _ShadowColor4;
        float4 _ShadowColor5;
        float4 _ShallowColor1;
        float4 _ShallowColor2;
        float4 _ShallowColor3;
        float4 _ShallowColor4;
        float4 _ShallowColor5;
        float4 _PostShadowFadeTint;
        float4 _PostShadowTint;
        float4 _PostShallowFadeTint;
        float4 _PostShallowTint;
        float4 _PostSSSTint;
        float4 _PostFrontTint;

        float _ScreenSpaceShadowWidth;
        float _ScreenSpaceShadowThreshold;
        float _ScreenSpaceShadowFadeOut;

        float3 _FaceCenter;
        float3 _FaceForward;
        float3 _FaceRight;
        float4 _OutlineColor;
        float _NoiseLineLkDnDisplace;
        float _NoiseLineHorizontalDisplace;

        float _MatCapRefract1;
        float _MatCapRefract2;
        float _MatCapRefract3;
        float _MatCapRefract4;
        float _MatCapRefract5;
        float4 _RefractParams1;
        float4 _RefractParams2;
        float4 _RefractParams3;
        float4 _RefractParams4;
        float4 _RefractParams5;
        float _RefractDepth1;
        float _RefractDepth2;
        float _RefractDepth3;
        float _RefractDepth4;
        float _RefractDepth5;
        float4 _MatCapColor1;
        float4 _MatCapColor2;
        float4 _MatCapColor3;
        float4 _MatCapColor4;
        float4 _MatCapColor5;
        float _MatCapAlphaBurst1;
        float _MatCapAlphaBurst2;
        float _MatCapAlphaBurst3;
        float _MatCapAlphaBurst4;
        float _MatCapAlphaBurst5;
        float _MatCapColorBurst1;
        float _MatCapColorBurst2;
        float _MatCapColorBurst3;
        float _MatCapColorBurst4;
        float _MatCapColorBurst5;
        float _MatCapBlendMode1;
        float _MatCapBlendMode2;
        float _MatCapBlendMode3;
        float _MatCapBlendMode4;
        float _MatCapBlendMode5;

        float _SpecularIntensity;
        float _MatMetallic;
        float _MatSmoothness;
        float _HighLightShape1;
        float _HighLightShape2;
        float _HighLightShape3;
        float _HighLightShape4;
        float _HighLightShape5;
        float _HeadSphereRange;
        float _ShapeSoftness1;
        float _ShapeSoftness2;
        float _ShapeSoftness3;
        float _ShapeSoftness4;
        float _ShapeSoftness5;
        float _SpecularRange1;
        float _SpecularRange2;
        float _SpecularRange3;
        float _SpecularRange4;
        float _SpecularRange5;
        float _ToonSpecular1;
        float _ToonSpecular2;
        float _ToonSpecular3;
        float _ToonSpecular4;
        float _ToonSpecular5;
        float _ModelSize1;
        float _ModelSize2;
        float _ModelSize3;
        float _ModelSize4;
        float _ModelSize5;
        float4 _SpecularColor1;
        float4 _SpecularColor2;
        float4 _SpecularColor3;
        float4 _SpecularColor4;
        float4 _SpecularColor5;

        float _AmbientColorIntensity;

        float _ScreenSpaceRimWidth;
        float _ScreenSpaceRimThreshold;
        float _ScreenSpaceRimFadeOut;
        float _ScreenSpaceRimBrightness;
        float _SkinMaterialID;
        float _RimLightIntensity;
        float4 _SunColor1;
        float4 _SunColor2;
        float4 _SunColor3;
        float4 _SunColor4;
        float4 _SunColor5;
        float4 _RimGlowColor1;
        float4 _RimGlowColor2;
        float4 _RimGlowColor3;
        float4 _RimGlowColor4;
        float4 _RimGlowColor5;

        float _AlphaClip;

        CBUFFER_END

        TEXTURE2D(_MainTex); SAMPLER(sampler_MainTex);
        TEXTURE2D(_NormalTex); SAMPLER(sampler_NormalTex);
        TEXTURE2D(_FaceLightTex); SAMPLER(sampler_FaceLightTex);
        TEXTURE2D(_OtherDataTex1); SAMPLER(sampler_OtherDataTex1);
        TEXTURE2D(_OtherDataTex2); SAMPLER(sampler_OtherDataTex2);
        TEXTURE2D(_MatCapTex1); SAMPLER(sampler_MatCapTex1);
        TEXTURE2D(_MatCapTex2); SAMPLER(sampler_MatCapTex2);
        TEXTURE2D(_MatCapTex3); SAMPLER(sampler_MatCapTex3);
        TEXTURE2D(_MatCapTex4); SAMPLER(sampler_MatCapTex4);
        TEXTURE2D(_MatCapTex5); SAMPLER(sampler_MatCapTex5);

        struct UniversalAttributes
        {
            float4 posOS : POSITION;
            float3 normalOS: NORMAL;
            float4 tangentOS: TANGENT;
            float2 texcoord0: TEXCOORD0;
        };

        struct UniversalVaryings
        {
            float2 uv: TEXCOORD0;
            float4 posWSAndFogFactor: TEXCOORD1;
            float3 normalWS: TEXCOORD2;
            float4 tangentWS: TEXCOORD3;
            float3 viewDirWS: TEXCOORD4;
            float4 posCS: SV_POSITION;
        };

        float AverageColor(float3 color)
        {
            return dot(color,float3(1.0,1.0,1.0))/3;
        }

        float3 NormalizeColorByAverageColor(float3 color)
        {
            float average=AverageColor(color);
            return color/max(average,1e-5);
        }

        float3 ScaleColorByMax(float3 color)
        {
            float maxcomponent=max3(color.r,color.g,color.b);
            maxcomponent=min(maxcomponent,1.0);
            return float3(color*maxcomponent);
        }

        float3 ClampColorByMax(float3 color)
        {
            float maxcomponent=max3(color.r,color.g,color.b);
            if (maxcomponent>1.0)
            {
                return color/maxcomponent;
            }
            return color;
        }

        UniversalVaryings MainVS(UniversalAttributes IN)
        {
            VertexPositionInputs positionInputs=GetVertexPositionInputs(IN.posOS.xyz);
            VertexNormalInputs normalInputs=GetVertexNormalInputs(IN.normalOS,IN.tangentOS);

            UniversalVaryings OUT;
            OUT.posCS=positionInputs.positionCS;
            OUT.posWSAndFogFactor=float4(positionInputs.positionWS,ComputeFogFactor(positionInputs.positionCS.z));
            OUT.normalWS=normalInputs.normalWS;
            OUT.tangentWS.xyz=normalInputs.tangentWS;
            OUT.tangentWS.w=IN.tangentOS.w*GetOddNegativeScale();
            OUT.viewDirWS=unity_OrthoParams.w==0?GetCameraPositionWS()-positionInputs.positionWS:GetWorldToViewMatrix()[2].xyz;
            OUT.uv=IN.texcoord0;
            return OUT;
        }

        float4 MainPS(UniversalVaryings IN,bool isFrontFace:SV_IsFrontFace):SV_Target
        {
            //Texture Process
            float4 var_MainTex=SAMPLE_TEXTURE2D(_MainTex,sampler_MainTex,IN.uv);
            float3 baseCol=var_MainTex.rgb*_Color.rgb;
            float baseAlpha=1.0;

            #if _DOMAIN_BODY || _DOMAIN_EYE
            {
                baseAlpha=var_MainTex.a*_Color.a;
            }
            #endif

            //Basic Vector
            float3 normalWS=normalize(IN.normalWS);
            float3 posWS=IN.posWSAndFogFactor.xyz;
            float3 viewDirWS=normalize(IN.viewDirWS);

            //ShadowCoords And Light Vector
            float4 shadowCoord=TransformWorldToShadowCoord(posWS);
            Light mainLight=GetMainLight(shadowCoord);
            float3 lightColor=mainLight.color;
            float3 lightDirWS=normalize(mainLight.direction);

            //SDF Data
            float angleMapping=0;
            float angleThreshold=0;
            float angleFunction=0;
            float angleMapMask=0;

            //TBN Matrix
            float sign=IN.tangentWS.w;
            float3 tangentWS=normalize(IN.tangentWS.xyz);
            float3 bitangentWS=cross(normalWS,tangentWS)*sign;
            float3x3 TBN=float3x3(tangentWS,bitangentWS,normalWS);

            
            float matCapMask=0;
            int materialID=0;

            float specularMask=0;
            float metallic=0;
            float smoothness=0.58;

            float3 pixelNormalWS=normalWS;
            float diffuseBias=0;

            #if _DOMAIN_BODY
            {
                float4 var_NormalTex=SAMPLE_TEXTURE2D(_NormalTex,sampler_NormalTex,IN.uv);
                var_NormalTex=var_NormalTex*2-1;
                diffuseBias=var_NormalTex.z*2;

                float3 pixelNormalTS=float3(var_NormalTex.xy,0.0);
                pixelNormalTS.xy=pixelNormalTS.xy*_BumpScale;
                pixelNormalTS.z=sqrt(1.0-min(0.0,dot(pixelNormalTS.xy,pixelNormalTS.xy)));
                pixelNormalWS=TransformTangentToWorld(pixelNormalTS,TBN);
                pixelNormalWS=normalize(pixelNormalWS);

                float4 var_OtherDataTex_1=SAMPLE_TEXTURE2D(_OtherDataTex1,sampler_OtherDataTex1,IN.uv);
                materialID=max(0,4-floor(var_OtherDataTex_1.r*5));
                metallic=_MatMetallic*var_OtherDataTex_1.g;
                specularMask=var_OtherDataTex_1.b;
                

                float4 var_OtherDataTex_2=SAMPLE_TEXTURE2D(_OtherDataTex2,sampler_OtherDataTex2,IN.uv);
                smoothness=_MatSmoothness*var_OtherDataTex_2.g;
                matCapMask=var_OtherDataTex_2.z;
            }
            #elif _DOMAIN_FACE
            {
                float3 headForward=normalize(_FaceForward-_FaceCenter);
                float3 headRight=normalize(_FaceRight-_FaceCenter);
                float3 headUp=normalize(cross(headForward,headRight));

                float3 lightDirProjHeadWS=lightDirWS-dot(lightDirWS,headUp)*headUp;
                lightDirProjHeadWS=normalize(lightDirProjHeadWS);

                float sX=dot(lightDirProjHeadWS,headRight);
                float sZ=dot(lightDirProjHeadWS,-headForward);
                angleThreshold=atan2(sX,sZ)/3.1415926;
                angleThreshold=angleThreshold>0?(1-angleThreshold):(1+angleThreshold);

                float2 angleUV=IN.uv;
                if (dot(lightDirProjHeadWS,headRight)>0)
                {
                    angleUV.x=1-angleUV.x;
                }
                float4 SDFData=SAMPLE_TEXTURE2D(_FaceLightTex,sampler_FaceLightTex,angleUV);
                angleMapping=SDFData.r;
                angleFunction=SDFData.g;
                angleMapMask=SDFData.a;

                float3 outlineColor=_OutlineColor*0.2;
                float viewDotHeadUp=dot(headUp,viewDirWS);
                float viewDotHeadForward=dot(headForward,viewDirWS);

                float dispValue=lerp(_NoiseLineLkDnDisplace,_NoiseLineHorizontalDisplace,
                    smoothstep(0,0.75,saturate(viewDotHeadUp+0.85)));
                dispValue=viewDotHeadForward-dispValue;
                dispValue=smoothstep(0,0.02,dispValue);
                dispValue-=var_MainTex.a;
                baseCol=lerp(baseCol,outlineColor,saturate(dispValue));

                metallic*=_MatMetallic;
                smoothness*=_MatSmoothness;
            }
            #endif

            //Back Normal Process
            normalWS*=isFrontFace?1:-1;
            pixelNormalWS*=isFrontFace?1:-1;
            
            //Light Attenuation
            float baseAttenuation=1.0;
            {
                float NdotL=dot(pixelNormalWS,lightDirWS);
                baseAttenuation=NdotL+diffuseBias;
            }

            //Screen Space Shadow
            float shadowAttenuation=1.0;

            #if _SCREEN_SPACE_SHADOW
            {
                 float linearEyeDepth=IN.posCS.w;
                 float perspective=1.0/linearEyeDepth;
                 float offsetMul=_ScreenSpaceShadowWidth*5.0*perspective/100.0;

                 float3 lightDirVS=TransformWorldToViewDir(lightDirWS);
                 float2 offset=lightDirVS.xy*offsetMul;
                 int2 coord=IN.posCS.xy+offset*_ScaledScreenParams.xy;

                 coord=min(max(0,coord),_ScaledScreenParams.xy-1);
                 float offsetSceneDepth=LoadSceneDepth(coord);
                 float offsetSceneLinearEyeDepth=LinearEyeDepth(offsetSceneDepth,_ZBufferParams);

                 float fadeout=max(1e-5,_ScreenSpaceShadowFadeOut);
                 shadowAttenuation=saturate(offsetSceneLinearEyeDepth-(linearEyeDepth-_ScreenSpaceShadowThreshold))*50/fadeout;
            }
            #endif

            //Light Shading
            float albedoSmoothness=max(1e-5,_AlbedoSmoothness);

            float albedoShadowFade=1.0;     //暗部较深阴影
            float albedoShadow=1.0;         //暗部较浅阴影
            float albedoShallowFade=1.0;    //灰部较深阴影
            float albedoShallow=1.0;        //灰部较浅阴影
            float albedoSSS=1.0;            //灰部次表面散射
            float albedoFront=1.0;          //亮部
            float albedoForward=1.0;        //高光部
            
            float attenuation=baseAttenuation*1.5;  //-1.5-1.5
            //Smoothness Cowfficient Adjust         
            float s0=albedoSmoothness*1.5;          //0-1.5
            //Sharp Coefficient
            float s1=1-s0;                          //-0.5-1

            float aRamp[6]={
                (attenuation+1.5)/s1+0.0,   //aRamp[0] 光照衰减最强处
                (attenuation+0.5)/s0+0.5,   //aRamp[1] 光照衰减较强处
                (attenuation+0.0)/s1+0.5,   //aRamp[2] 光照衰减中间过渡较强处
                (attenuation-0.5)/s0+0.5,   //aRamp[3] 光照衰减中间过渡较弱处
                (attenuation-0.5)/s0-0.5,   //aRamp[4] 光照衰减较弱处
                (attenuation-2.0)/s1+1.5,   //aRamp[5] 光照基本零衰减区域
            };
            albedoShadowFade=saturate(1-aRamp[0]);                  //暗部较深阴影
            albedoShadow=saturate(min(1-aRamp[1],aRamp[0]));        //暗部较浅阴影
            albedoShallowFade=saturate(min(1-aRamp[2],aRamp[1]));   //灰部较深阴影
            albedoShallow=saturate(min(1-aRamp[3],aRamp[2]));       //灰部较浅阴影
            albedoSSS=saturate(min(1-aRamp[4],aRamp[3]));           //灰部次表面散射
            albedoFront=saturate(min(1-aRamp[5],aRamp[4]));         //亮部
            albedoForward=saturate(aRamp[5]);                       //高光部

            float sRamp[2]={
                2.0*shadowAttenuation,
                2.0*shadowAttenuation-1,
            };
            albedoShallowFade*=saturate(sRamp[0]);
            albedoShallowFade+=(1-albedoShadowFade-albedoShadow)*saturate(1-sRamp[0]);
            albedoShallow*=saturate(min(sRamp[0],1-sRamp[1]))+saturate(sRamp[1]);
            albedoSSS*=saturate(min(sRamp[0],1-sRamp[1]))+saturate(sRamp[1]);
            albedoSSS+=(albedoFront+albedoForward)*saturate(min(sRamp[0],1-sRamp[1]));
            albedoFront*=saturate(sRamp[1]);
            albedoForward*=saturate(sRamp[1]);
            
            float a =abs(albedoShadowFade+albedoShadow+albedoShallowFade+albedoShallow+albedoSSS+albedoFront+albedoForward-1.0)<0.01;
            
            #if _DOMAIN_FACE
            {
                float s=lerp(_AlbedoSmoothness,0.025,saturate(2.5*(angleFunction-0.5)));
                s=max(1e-5,s);
                float angleAttenuation=0.6+(angleMapping*1.2-0.6)/(s*4+1)-angleThreshold;
                float aRamp[3]={
                    angleAttenuation/s,
                    angleAttenuation/s-1,
                    angleAttenuation/0.125-16*s,
                };
                float angleShadowFade=saturate(1-aRamp[0]);
                float angleShadow=0;
                float angleShallowFade=0;
                float angleShallow=0;
                float angleSSS=min(saturate(1-aRamp[1]),saturate(aRamp[0]));
                float angleFront=min(saturate(1-aRamp[2]),saturate(aRamp[1]));
                float angleForward=saturate(aRamp[2]);

                float sRamp[1]={
                    2*shadowAttenuation,
                };
                angleShadowFade*=saturate(1-sRamp[0]);
                angleShallowFade+=(1-angleForward-angleFront-angleSSS-angleShallow)*saturate(sRamp[0]);
                angleShallowFade+=(angleSSS+angleFront+angleForward)*saturate(1-sRamp[0]);
                angleSSS*=saturate(sRamp[0]);
                angleFront*=saturate(sRamp[0]);
                angleForward*=saturate(sRamp[0]);

                albedoShadowFade=lerp(albedoShadowFade,angleShadowFade,angleMapMask);
                albedoShadow=lerp(albedoShadow,angleShadow,angleMapMask);
                albedoShallowFade=lerp(albedoShallowFade,angleShallowFade,angleMapMask);
                albedoShallow=lerp(albedoShallow,angleShallow,angleMapMask);
                albedoSSS=lerp(albedoSSS,angleSSS,angleMapMask);
                albedoFront=lerp(albedoFront,angleFront,angleMapMask);
                albedoForward=lerp(albedoForward,angleForward,angleMapMask);
            }
            #endif

            float3 shadowFadeColor=1.0;
            float3 shadowColor=1.0;
            float3 shallowFadeColor=1.0;
            float3 shallowColor=1.0;
            float3 sssColor=1.0;
            float3 frontColor=1.0;
            float3 forwardColor=1.0;

            float zFade=saturate(IN.posCS.w*0.43725);
            shadowColor=select(materialID,
                _ShadowColor1,
                _ShadowColor2,
                _ShadowColor3,
                _ShadowColor4,
                _ShadowColor5);

            shadowColor=lerp(NormalizeColorByAverageColor(shadowColor),shadowColor,zFade);
            shadowFadeColor=shadowColor*_PostShadowFadeTint;
            shadowColor=shadowColor*_PostShadowTint;

            shallowColor=select(materialID,
                _ShallowColor1,
                _ShallowColor2,
                _ShallowColor3,
                _ShallowColor4,
                _ShallowColor5);

            shallowColor=lerp(NormalizeColorByAverageColor(shallowColor),shallowColor,zFade);
            shallowFadeColor=shallowColor*_PostShallowFadeTint;
            shallowColor=shallowColor*_PostShallowTint;

            sssColor=_PostSSSTint;
            frontColor=_PostFrontTint;
            forwardColor=1.0;

            float3 lightColorScaledByMax=ScaleColorByMax(lightColor);
            float3 albedo=(albedoForward*forwardColor+
                albedoFront*frontColor+
                albedoSSS*sssColor)*lightColor;
            albedo+=(albedoShadowFade*shadowFadeColor+
                albedoShadow*shadowColor+
                albedoShallowFade*shallowFadeColor+
                albedoShallow*shallowColor)*lightColorScaledByMax;

            float3 capCol=baseCol;

            #if _DOMAIN_BODY&&_MATCAP_ON
            {
                float mask=matCapMask;
                float3 pixelNormalVS=TransformWorldToViewDir(pixelNormalWS);
                float2 capUV=pixelNormalVS.xy*0.5+0.5;
                float refract=select(materialID,
                    _MatCapRefract1,
                    _MatCapRefract2,
                    _MatCapRefract3,
                    _MatCapRefract4,
                    _MatCapRefract5);
                if (refract>0.5)
                {
                    float4 params=select(materialID,
                        _RefractParams1,
                        _RefractParams2,
                        _RefractParams3,
                        _RefractParams4,
                        _RefractParams5);
                    
                    float depth=select(materialID,
                        _RefractDepth1,
                        _RefractDepth2,
                        _RefractDepth3,
                        _RefractDepth4,
                        _RefractDepth5);
                    
                    capUV=capUV*depth+IN.uv*params.xy+params.zw;
                }
                
                capCol=select(materialID,
                    SAMPLE_TEXTURE2D(_MatCapTex1,sampler_MatCapTex1,capUV),
                    SAMPLE_TEXTURE2D(_MatCapTex2,sampler_MatCapTex2,capUV),
                    SAMPLE_TEXTURE2D(_MatCapTex3,sampler_MatCapTex3,capUV),
                    SAMPLE_TEXTURE2D(_MatCapTex4,sampler_MatCapTex4,capUV),
                    SAMPLE_TEXTURE2D(_MatCapTex5,sampler_MatCapTex5,capUV));

                float3 tintColor=select(materialID,
                    _MatCapColor1,
                    _MatCapColor2,
                    _MatCapColor3,
                    _MatCapColor4,
                    _MatCapColor5);

                float alphaBurst=select(materialID,
                    _MatCapAlphaBurst1,
                    _MatCapAlphaBurst2,
                    _MatCapAlphaBurst3,
                    _MatCapAlphaBurst4,
                    _MatCapAlphaBurst5);

                float colorBurst=select(materialID,
                    _MatCapColorBurst1,
                    _MatCapColorBurst2,
                    _MatCapColorBurst3,
                    _MatCapColorBurst4,
                    _MatCapColorBurst5);

                float blendMode=select(materialID,
                    _MatCapBlendMode1,
                    _MatCapBlendMode2,
                    _MatCapBlendMode3,
                    _MatCapBlendMode4,
                    _MatCapBlendMode5);

                if (blendMode==0)
                {
                    float alpha=saturate(alphaBurst*mask);
                    float3 blendColor=capCol*tintColor*colorBurst;
                    capCol=lerp(baseCol,blendColor,alpha);
                }
                else if (blendMode==1)
                {
                    float alpha=saturate(alphaBurst*mask);
                    float3 blendColor=capCol*tintColor*colorBurst;
                    capCol=baseCol+alpha*blendColor;
                }
                else if (blendMode==2)
                {
                    float alpha=saturate(alphaBurst*mask);
                    float3 blendColor=saturate((capCol*tintColor-0.5)*colorBurst+capCol*tintColor);
                    blendColor=lerp(0.5,blendColor,alpha);
                    capCol=lerp(blendColor*baseCol*2,1-2*(1-baseCol)*(1-blendColor),baseCol>0.5);
                }
            }
            #endif

            #if _GAMMA_ON
            {
                float3 gammaCol=capCol;
                {
                    float pixelNdotL=dot(lightDirWS,pixelNormalWS);
                    float NdotL=dot(lightDirWS,normalWS);
                    float occlusion=saturate(1-3*(NdotL-pixelNdotL))*2;
                    occlusion*=sqrt(occlusion);
                    occlusion=min(1,occlusion);

                    float attenuation=lerp((pixelNdotL*0.5+0.5)*occlusion,saturate(pixelNdotL),0.5);

                    float3 capColClamped=ClampColorByMax(capCol);

                    float luminance=Luminance(capCol);
                    float gamma=lerp(luminance*0.2875+1.4375,1,attenuation);
                    float3 capColGamma=pow(max(1e-5,capColClamped),gamma);
                    float3 capColGammaHalf=lerp(capCol,capColGamma,0.5);
                    gammaCol=lerp(capColGammaHalf,capColGamma,saturate(NdotL));
                    
                    capCol=gammaCol;
                }
            }
            #endif

            float3 pbrDiffuseCol=lerp(0.96*capCol,0,metallic);
            float3 pbrSpecularCol=lerp(0.04,capCol,metallic);
            float3 specularCol=0;
            
            #if _DOMAIN_BODY
            {
                float shape=select(materialID,
                    _HighLightShape1,
                    _HighLightShape2,
                    _HighLightShape3,
                    _HighLightShape4,
                    _HighLightShape5
                    );
                
                float range=select(materialID,
                    _SpecularRange1,
                    _SpecularRange2,
                    _SpecularRange3,
                    _SpecularRange4,
                    _SpecularRange5
                    );

                float3 halfVec=normalize(lightDirWS+viewDirWS);
                
                float LdotH=dot(lightDirWS,halfVec);
                float rangeLdotH1=saturate(range*LdotH*0.75+0.25);
                float rangeLdotH2=max(0.1,rangeLdotH1*rangeLdotH1);

                float NdotL=dot(pixelNormalWS,lightDirWS);
                float rangeNdotL=saturate(range*NdotL*0.75+0.25);
                
                float specular=0;

                if (shape>0.5)
                {
                    bool useSphere=_HeadSphereRange>0;

                    float3 sphereNormalWS=posWS-_FaceCenter;
                    float len=length(sphereNormalWS);
                    sphereNormalWS=normalize(sphereNormalWS);
                    float sphereUsage=1.0-saturate((len-_HeadSphereRange)*20);
                    float3 shapeNormalWS=lerp(pixelNormalWS,sphereNormalWS,sphereUsage);

                    float attenuation=saturate(baseAttenuation*1.5+0.5);
                    float shapeNdotL=dot(shapeNormalWS,lightDirWS);
                    float shapeAttenuation=sqrt(saturate(shapeNdotL*0.5+0.5));

                    shapeNormalWS=useSphere?shapeNormalWS:pixelNormalWS;
                    shapeAttenuation=useSphere?shapeAttenuation:attenuation;

                    float NdotH=dot(shapeNormalWS,halfVec);
                    float NdotH01=saturate(NdotH*0.5+0.5);
                    specular=NdotH01*shapeAttenuation+specularMask-1;

                    float softness=select(materialID,
                        _ShapeSoftness1,
                        _ShapeSoftness2,
                        _ShapeSoftness3,
                        _ShapeSoftness4,
                        _ShapeSoftness5
                        );
                    specular=saturate(specular/softness);
                    specular=specular*min(1.0,1.0/(6.0*rangeLdotH2))*rangeNdotL;
                }
                else
                {
                    float perceptualRoughness=1-smoothness;
                    float roughness=perceptualRoughness*perceptualRoughness;
                    float normalizationTerm=roughness*4+2;
                    float roughness2=roughness*roughness;
                    float roughness2MinusOne=roughness2-1;

                    float NdotH=dot(pixelNormalWS,halfVec);
                    float rangeNdotH=saturate(range*NdotH*0.75+0.25);

                    float d=rangeNdotH*rangeNdotH*roughness2MinusOne+1;
                    float d2=d*d;

                    float ggx=roughness2/(d2*rangeLdotH2*normalizationTerm);
                    specular=saturate((ggx-smoothness)*rangeNdotL);
                    specular/=max(1e-5,roughness);

                    float toon=select(materialID,
                        _ToonSpecular1,
                        _ToonSpecular2,
                        _ToonSpecular3,
                        _ToonSpecular4,
                        _ToonSpecular5
                        );

                    float size=select(materialID,
                        _ModelSize1,
                        _ModelSize2,
                        _ModelSize3,
                        _ModelSize4,
                        _ModelSize5
                        );

                    specular*=toon*size*specularMask;
                    specular*=10;
                    specular=saturate(specular);
                }
                specular*=100;
                specular*=_SpecularIntensity;

                float3 tintColor=select(materialID,
                    _SpecularColor1,
                    _SpecularColor2,
                    _SpecularColor3,
                    _SpecularColor4,
                    _SpecularColor5
                    );

                specularCol=specular*tintColor;
            }
            #endif

            float3 ambientCol=SampleSH(pixelNormalWS)*capCol*_AmbientColorIntensity;

            float3 rimLightCol=0;
            {
                bool isSkin = (materialID == _SkinMaterialID);
                float LdotV=dot(lightDirWS,viewDirWS);
                float viewAttenuation=-LdotV*0.5+0.5;
                viewAttenuation=pow2(viewAttenuation);
                float edgeAttenuation=1-pow4(pow5(viewAttenuation));
                viewAttenuation=viewAttenuation*0.5+0.5;

                float verticalAttenuation=pixelNormalWS.y*0.5+0.5;
                verticalAttenuation=isSkin?verticalAttenuation:pow2(verticalAttenuation);
                verticalAttenuation=smoothstep(0,1,verticalAttenuation);

                float lightAttenuation=saturate(dot(pixelNormalWS,lightDirWS))*shadowAttenuation;

                float cameraDistance=length(IN.viewDirWS);
                float NdotV=dot(pixelNormalWS,viewDirWS);
                float fresnelDistanceFade=(isSkin?0.75:0.65)-0.45*min(1,cameraDistance/12.0);
                float fresnelAttenuation=1-NdotV-fresnelDistanceFade;
                float fresnelSoftness=isSkin?0.2:0.3;
                fresnelAttenuation=smoothstep(0,fresnelSoftness,fresnelAttenuation);

                float distanceAttenuation=1-0.7*saturate(cameraDistance*0.2-1);

                float3 sunColor=select(materialID,
                    _SunColor1,
                    _SunColor2,
                    _SunColor3,
                    _SunColor4,
                    _SunColor5
                    );
                float sunLuminance=Luminance(sunColor);
                sunColor=isSkin?sunColor:sunLuminance.xxx;
                float3 sunColorScaled=pow2(pow4(sunColor));
                //sunColorScaled/=max(1e-5,dot(sunColorScaled,0.7));

                sunColor=AverageColor(sunColor)*sunColorScaled;
                sunColor=lerp(albedo,sunColor,shadowAttenuation);
                sunColor=lerp(albedo,sunColor,edgeAttenuation);

                float3 rimDiffuse=pow(max(1e-5,pbrDiffuseCol),0.2);
                rimDiffuse=normalize(rimDiffuse);
                float diffuseBrightness=AverageColor(pbrDiffuseCol);
                diffuseBrightness=(1-0.2*pow2(diffuseBrightness))*0.1;
                rimDiffuse*=diffuseBrightness;

                float3 rimSpecular=pbrSpecularCol;
                float3 rimColor=lerp(rimDiffuse,rimSpecular,metallic);
                //rimColor*=10;
                rimColor*=fresnelAttenuation*verticalAttenuation*
                    viewAttenuation*distanceAttenuation*lightAttenuation;

                float3 glowColor=select(materialID,
                    _RimGlowColor1,
                    _RimGlowColor2,
                    _RimGlowColor3,
                    _RimGlowColor4,
                    _RimGlowColor5
                    );
                rimColor*=glowColor;

                float3 rimLightBrightness=AverageColor(rimColor);
                rimLightBrightness=pow2(rimLightBrightness);
                rimLightBrightness=1+0.5*rimLightBrightness;
                rimColor*=rimLightBrightness;
                
                float screenSpaceRim=0;
                #if _SCREEN_SPACE_RIM
                {
                    float linearEyeDepth=IN.posCS.w;
                    float3 normalVS=TransformWorldToViewDir(normalWS);
                    float2 uvOffset=float2(normalize(normalVS.xy))*_ScreenSpaceRimWidth/linearEyeDepth;
                    int2 texPos=IN.posCS.xy+uvOffset;
                    texPos=min(max(0,texPos),_ScaledScreenParams.xy-1);
                    float offsetSceneDepth=LoadSceneDepth(texPos);
                    float offsetSceneLinearEyeDepth=LinearEyeDepth(offsetSceneDepth,_ZBufferParams);
                    screenSpaceRim=saturate(offsetSceneLinearEyeDepth-(linearEyeDepth+_ScreenSpaceRimThreshold))*10/_ScreenSpaceRimFadeOut;
                    screenSpaceRim*=_ScreenSpaceRimBrightness;
                }
                #endif
                
                rimLightCol=screenSpaceRim*rimColor;
                
            }
            
            float3 color=ambientCol;
            color+=pbrDiffuseCol*albedo;
            color+=pbrSpecularCol*specularCol*albedo;
            color+=max(0,pbrSpecularCol*specularCol*albedo-1);
            color+=rimLightCol;

            color=MixFog(color,IN.posWSAndFogFactor.w);
            
            return float4(color,baseAlpha);
        }
        
        ENDHLSL

        Pass
        {
            Name "Base Pass"
            Tags
            {
                "LightMode"="UniversalForward"
            }
            
            BlendOp [_BlendOp]
            Blend [_SrcBlend] [_DstBlend]
            Cull [_CullMode]
            ZWrite [_ZWriteMode]
            ZTest [_ZTestMode]
            ColorMask [_ColorMask]
            
            Stencil
            {
                Ref [_Stencil]
                Comp [_StencilCompareFunction]
                Pass [_StencilPass]
                Fail [_StencilFail]
                ZFail [_StencilZFail]
            }
            
            HLSLPROGRAM

            #pragma vertex MainVS
            #pragma fragment MainPS

            #pragma multi_compile_fog
            
            ENDHLSL
        }

        Pass
        {
            Name "SRPDefaultUnlit"
            Tags
            {
                "LightMode"="SRPDefaultUnlit"
            }
            Cull [_CullMode]
            BlendOp [_SRPDefaultBlendOp]
            Blend [_SRPDefaultSrcBlend] [_SRPDefaultDstBlend]
            ZWrite [_ZWriteMode]
            Stencil
            {
                Ref [_SRPStencilRef]
                Comp [_SRPStencilCompareFunction]
                Pass [_SRPDefaultPass]
                Fail [_SRPStencilFail]
                ZFail [_SRPStencilZFail]
            }
            
            HLSLPROGRAM

            #pragma shader_feature_local _SRP_DEFAULT_PASS
            #pragma shader_feature_local _SCREEN_SPACE_SHADOW
            #pragma shader_feature_local _MATCAP_ON
            #pragma shader_feature_local _GAMMA_ON
            #pragma shader_feature_local _SCREEN_SPACE_RIM

            #pragma vertex MainVS2
            #pragma fragment MainPS2

            #pragma  multi_compile_fog

            #if _SRP_DEFAULT_PASS
                UniversalVaryings MainVS2(UniversalAttributes input){return MainVS(input);}
                float4 MainPS2(UniversalVaryings input,bool isFrontFace:SV_IsFrontFace):SV_Target{return MainPS(input,isFrontFace);}
            #else
                void MainVS2(){};
                void MainPS2(){};
            #endif
            
            ENDHLSL
        }
        
        Pass
        {
            Name "DepthOnly"
            Tags{"LightMode" = "DepthOnly"}

            ZWrite On
            ColorMask 0
            Cull off

            HLSLPROGRAM
            // Required to compile gles 2.0 with standard srp library

            #pragma vertex DepthOnlyVertex
            #pragma fragment DepthOnlyFragment
            
            #include "Packages/com.unity.render-pipelines.universal/Shaders/DepthOnlyPass.hlsl"
            ENDHLSL
        }

        Pass
        {
            Name "Outline Pass"
            Tags {"LightMode"="UniversalForwardOnly"}
            Cull Front
            
            HLSLPROGRAM
            
            #pragma vertex vert
            #pragma fragment frag
            #pragma shader_feature_local _OUTLINE_PASS

            CBUFFER_START(UnityPerMaterial)

            float _OutlineWidth;
            float4 _OutlineColor1;
            float4 _OutlineColor2;
            float4 _OutlineColor3;
            float4 _OutlineColor4;
            float4 _OutlineColor5;
            float _OutlineZOffset;
            
            CBUFFER_END

            struct Attriibutes
            {
                float4 posOS : POSITION;
                float3 normalOS: NORMAL;
                float4 tangentOS: TANGENT;
                float2 texcoord0: TEXCOORD0;
                float2 texcoord1: TEXCOORD1;
            };

            struct Varyings
            {
                float4 posCS: SV_POSITION;
                float FogFactor: TEXCOORD0;
                float2 uv: TEXCOORD1;
            };

            float GetCameraFov()
            {
                float t=unity_CameraProjection._m11;
                float2 Rad2Deg=180/3.14159;
                float fov=atan(1.0f/t)*2.0*Rad2Deg;
                return fov;
            }

            float ApplyOutlineDistanceFadeOut(float inputMulFix)
            {
                return saturate(inputMulFix);
            }

            float GetOutlineCameraFovAndDistanceFixMultipler(float posVS_Z)
            {
                float cameraMulFix;
                if (unity_OrthoParams.w==0)
                {
                    //Perspective
                    //Keep Outline Similar Width On Screen Across All Camera Diatance
                    cameraMulFix=abs(posVS_Z);
                    cameraMulFix=ApplyOutlineDistanceFadeOut(cameraMulFix);
                    //Also Allow For FOV
                    cameraMulFix*=GetCameraFov();
                }
                else
                {
                    float orthoSize=abs(unity_OrthoParams.y);
                    orthoSize=ApplyOutlineDistanceFadeOut(orthoSize);
                    cameraMulFix=orthoSize*50;
                }
                return cameraMulFix*0.00005;
            }

            //2D Octahedron to 3D Unit Vector
            float3 OctTounitVector(float2 oct)
            {
                float3 N=float3(oct,1-dot(1,abs(oct)));
                float t=max(-N.z,0);
                N.x+=N.y>=0?(-t):t;
                N.y+=N.y>=0?(-t):t;
                return normalize(N);
            }

            float4 GetNewClipPosWithZOffset(float4 originalPosCS,float viewSpaceZOffsetAmount)
            {
                if (unity_OrthoParams.w==0)
                {
                    float2 ProjM_ZRom_ZW=UNITY_MATRIX_P[2].zw;
                    float modifiedPosVS_Z=-originalPosCS.w+-viewSpaceZOffsetAmount;
                    float modifiedPosCS_Z=modifiedPosVS_Z*ProjM_ZRom_ZW[0]+ProjM_ZRom_ZW[1];
                    originalPosCS.z=modifiedPosCS_Z*originalPosCS.w/(-modifiedPosVS_Z);
                    return originalPosCS;
                }
                else
                {
                    originalPosCS.z+=-viewSpaceZOffsetAmount/_ProjectionParams.z;
                    return originalPosCS;
                }
            }

            Varyings vert(Attriibutes IN)
            {
                #if !_OUTLINE_PASS
                return (Varyings)0;
                #endif

                VertexPositionInputs positionInputs=GetVertexPositionInputs(IN.posOS.xyz);
                VertexNormalInputs normalInputs=GetVertexNormalInputs(IN.normalOS,IN.tangentOS);

                float outlineWidth=_OutlineWidth;
                outlineWidth*=GetOutlineCameraFovAndDistanceFixMultipler(positionInputs.positionVS.z);

                float3 posWS=positionInputs.positionWS.xyz;
                float3 smoothNormal=OctTounitVector(IN.texcoord1);

                float3x3 TBN=float3x3(
                    normalInputs.tangentWS,
                    normalInputs.bitangentWS,
                    normalInputs.normalWS);
                
                smoothNormal=mul(smoothNormal,TBN);
                posWS+=smoothNormal*outlineWidth;

                Varyings OUT=(Varyings)0;
                OUT.posCS=GetNewClipPosWithZOffset(TransformWorldToHClip(posWS),_OutlineZOffset);
                OUT.FogFactor=ComputeFogFactor(positionInputs.positionCS.z);
                OUT.uv=IN.texcoord0;
                return OUT;
            }

            float4 frag(Varyings IN):SV_Target
            {
                #if !_OUTLINE_PASS
                clip(-1);
                #endif
                float3 outlineColor=0;

                #if _DOMAIN_FACE
                {
                    outlineColor=_OutlineColor1.rgb;    
                }
                #elif _DOMAIN_BODY
                {
                    outlineColor=_OutlineColor2.rgb;
                    float4 var_OtherDataTex_1=SAMPLE_TEXTURE2D(_OtherDataTex1,sampler_OtherDataTex1,IN.uv);
                    int materialID=max(0,4-floor(var_OtherDataTex_1.r*5));
                    outlineColor=select(materialID,_OutlineColor1,_OutlineColor2,_OutlineColor3,_OutlineColor4,_OutlineColor5);
                }
                #endif

                outlineColor*=0.2;

                float4 color=float4(outlineColor,1);
                color.rgb=MixFog(color.rgb,IN.FogFactor);
                return color;
            }
            ENDHLSL
        }
    }
}