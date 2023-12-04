<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의</title>
<style type="text/css">

<style>

@font-face {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2') format('woff2');
            font-weight: 700;
            font-style: normal;
        }

        body {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }

        * {
            box-sizing: border-box;
        }

        html,
        body {
            height: 100%;
        }

        body {
            display: flex;
            margin: 0;
        }

        ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .wrap {
            margin: auto;
            padding: 0 0 50px 0;
        }

        .wrap .logo {
            text-align: center;
            margin-bottom: 10px;
        }

        .wrap .logo h1 {
            margin-bottom: 30px;
            font-size: 35px;
        }

        .wrap .contents {
            padding: 10px 50px;
            border: 1px solid #dadada;
            border-radius: 10px;
        }

        #form__wrap {
            margin: 0 auto;
            width: 460px;
            font-size: 17px;
        }

        .terms__list .terms__box {
            margin: 20px 0;
        }

        .contents label {
            font-weight: 700;
        }

        label.required::after {
            margin-left: 4px;
            font-size: 17px;
            font-weight: 400;
            line-height: 24px;
            color: #0086ff;
            content: "(필수)";
        }

        .terms__list .terms__content {
            height: 150px;
            overflow: auto;
            margin-top: 8px;
            padding: 12px;
            border: 1px solid #dadada;
            background: #fff;
            font-size: 15px;
        }

        .button {
            font-family: 'Cafe24Supermagic-Bold-v1.0';

            width: 100%;
            height: 40px;
            outline: none;
            cursor: pointer;
            background-color: rgb(218, 241, 225);
            color: black;
            border: 1px solid #dadada;
            border-radius: 5px;
            transition-duration: 0.2s;
            margin: 10px 0;
        }

        @media (max-width: 768px) {
            .wrap {
                min-width: 240px;
                padding: 20px;
            }

            #form__wrap {
                max-width: 460px;
                width: auto;
            }
        }

</style>

</style>
</head>
<body>

<div class="wrap">
        <div class="logo">
            <h1>약관동의</h1>
        </div>
        <div class="contents">
            <form action="/project/agree" id="form__wrap" method="post">

                <ul class="terms__list">
                    <li class="terms__box">
                        <div class="input__check">
                            <input type="checkbox" name="agreement" id="termsAgreement" value="termsAgreement"
                                required />
                            <label for="termsAgreement" class="required">회원약관 동의</label>
                        </div>
                        <div class="terms__content">
                            <p>제1장: 총칙</p>
                            <p>제1조 (목적)<br>
                                본 회원약관(이하 "약관"이라 함)은 북마스터스 (이하 "회사"라 함)가 제공하는 서비스(이하 "서비스"라 함)를 이용함에 있어 회원과 회사 사이의 권리,
                                의무 및 책임사항을 규정함을 목적으로 합니다.</p>

                            <p>제2조 (약관의 효력 및 변경)<br>
                                약관은 회사의 서비스 홈페이지(웹사이트)에 게시하거나 기타의 방법으로 회원에게 고지함으로써 효력이 발생합니다. 회사는 필요한 경우 약관을 변경할 수 있으며,
                                변경된 약관은 회사의 서비스 홈페이지에 공지함으로써 효력이 발생합니다. 회원은 변경된 약관을 숙지하고 준수해야 합니다.</p>

                            <p>제2장: 회원가입 및 계정</p>
                            <p>제3조 (회원가입)<br>
                                서비스를 이용하려는 자는 회사가 정한 가입 양식에 따라 개인정보를 제공하고 회원가입 신청을 해야 합니다. 회원가입은 본인의 개인정보를 정확하게 기입하여야
                                하며, 타인의 정보를 도용하거나 허위 정보를 제공할 수 없습니다.</p>

                            <p>제4조 (계정 및 비밀번호 관리)<br>
                                회원은 자신의 계정과 비밀번호를 관리해야 하며, 회원 가입 시 등록한 정보의 변경사항이 있을 경우 즉시 업데이트해야 합니다. 회원은 자신의 계정과 비밀번호를
                                제3자에게 누설하거나 공유해서는 안 되며, 회원 본인의 책임 하에 이용해야 합니다.</p>

                            <p>제3장: 서비스 이용</p>
                            <p>제5조 (서비스 이용)<br>
                                회원은 본 약관과 관련 법령을 준수하며, 회사가 제공하는 서비스를 이용할 수 있습니다. 서비스 이용 시, 부적절한 내용의 게시물을 작성하거나 타인의 권리를
                                침해하는 행위 등을 금지합니다.</p>

                            <p>제4장: 개인정보 보호</p>
                            <p>제6조 (개인정보 수집 및 이용)<br>
                                회사는 회원의 개인정보를 수집할 때, 회원의 동의를 얻고 이를 합법적으로 수집 및 이용합니다. 회사는 회원의 개인정보를 제3자에게 제공하지 않으며, 개인정보
                                보호 관련 법령과 회사의 개인정보 처리 방침을 준수합니다.</p>

                            <p>제7조 (개인정보 관리)<br>
                                회원은 자신의 개인정보를 보호하기 위해 개인정보를 안전하게 관리해야 합니다. 개인정보 유출로 인한 손실이 발생한 경우 회원은 본인의 책임하에 처리해야 합니다.
                            </p>

                            <p>제5장: 기타</p>
                            <p>제8조 (면책조항)<br>
                                회사는 서비스의 품질 향상을 위해 합리적인 노력을 다하겠으나, 서비스 중단, 오류, 데이터 손실 등으로 인한 손해에 대한 책임을 부담하지 않습니다.</p>

                            <p>제9조 (분쟁해결 및 관할법원)<br>
                                본 약관과 관련된 분쟁 발생 시 회사와 회원은 성실히 협의하여 해결하려고 노력해야 합니다. 분쟁의 해결이 불가능한 경우, 관할법원은 [회사의 소재지 또는
                                회원의 주소지]의 법원으로 합니다.</p>

                            <p>제10조 (기타사항)<br>
                                본 약관에 명시되지 않은 사항은 관련 법령 및 회사의 정책에 따릅니다. 본 약관은 가입일 부터 시행됩니다.</p>
                        </div>
                    </li>
                    <li class="terms__box">
                        <div class="input__check">
                            <input type="checkbox" name="agreement" id="privacyAgreement" value="privacyAgreement"
                                required />
                            <label for="privacyAgreement" class="required">개인정보처리방침</label>
                        </div>
                        <div class="terms__content">
                            <p>1. 개인정보 수집 및 이용 목적</p>
                            <p>1.1. 북마스터스 (이하 "회사"라 함)는 다음과 같은 목적으로 개인정보를 수집하고 이용합니다:</p>
                            <ul>
                                <li>회원가입 및 서비스 제공</li>
                                <li>서비스 이용에 따른 요금 정산</li>
                                <li>고객 지원 및 문의 응대</li>
                                <li>서비스 개선 및 품질 향상</li>
                                <li>법적 의무 이행 및 분쟁 해결</li>
                            </ul>

                            <p>2. 수집하는 개인정보 항목</p>
                            <p>2.1. 회사는 다음과 같은 개인정보 항목을 수집할 수 있습니다:</p>
                            <ul>
                                <li>이름</li>
                                <li>연락처 정보 (이메일 주소, 전화번호)</li>
                                <li>주소</li>
                                <li>결제 정보 (신용카드 정보 또는 결제 서비스 계정 정보)</li>
                                <li>서비스 이용 기록, 로그 데이터, 쿠키, IP 주소 등</li>
                            </ul>

                            <p>3. 개인정보의 보유 및 이용 기간</p>
                            <p>3.1. 회사는 개인정보를 수집한 목적이 달성되거나 회원이 회원 탈퇴를 요청하는 경우에 한하여 개인정보를 보유합니다.</p>
                            <p>3.2. 단, 관련 법령에서 정하는 기간 동안은 개인정보를 보관할 수 있으며, 법적 의무를 수행하기 위해 필요한 경우에 한하여 보존될 수 있습니다.</p>

                            <p>4. 개인정보의 제3자 제공 및 공유</p>
                            <p>4.1. 회사는 회원의 개인정보를 제3자와 공유 또는 제공하지 않습니다, 단, 다음과 같은 경우에는 예외로 합니다:</p>
                            <ul>
                                <li>회원의 동의가 있는 경우</li>
                                <li>법령에 따라 제공이 요구되는 경우</li>
                                <li>회사와의 계약을 이행하기 위해 필요한 경우</li>
                            </ul>

                            <p>5. 개인정보 보호 조치</p>
                            <p>5.1. 회사는 개인정보 보호를 위해 다음과 같은 조치를 취합니다:</p>
                            <ul>
                                <li>개인정보 접근 제한</li>
                                <li>개인정보 보안 프로토콜 및 기술적 조치</li>
                                <li>개인정보 처리 권한을 가진 직원의 교육 및 훈련</li>
                            </ul>

                            <p>6. 개인정보 주체의 권리와 의무</p>
                            <p>6.1. 회원은 개인정보에 대한 열람, 정정, 삭제, 처리정지, 이전 등의 권리를 가지며, 이에 관한 요청은 회사에게 문의하여 행사할 수 있습니다.</p>

                            <p>7. 개인정보 보호 책임자</p>
                            <p>7.1. 회사는 개인정보 보호에 대한 책임자를 지정하고 있으며, 회원은 개인정보 보호 관련 문의나 민원 신고를 할 수 있습니다.</p>

                            <p>8. 개인정보 처리방침 변경</p>
                            <p>8.1. 회사는 개인정보 처리방침을 개정할 수 있으며, 변경 사항은 서비스 홈페이지를 통해 공지합니다.</p>
                    </li>
                    <li class="terms__box">
                        <div class="input__check">
                            <input type="checkbox" name="agreement" id="promotionsAgreement" value="promotionsAgreement"
                                required />
                            <label for="promotionsAgreement" class="required">개인정보처리의 위탁</label>
                        </div>
                        <div class="terms__content">
                            <p>1. 개인정보 처리 위탁</p>
                            <p>1.1. 북마스터스 (이하 "회사"라 함)는 회원의 개인정보를 다음과 같은 목적으로 외부 업체에게 위탁하여 처리할 수 있습니다:</p>
                            <ul>
                                <li>데이터 저장 및 백업</li>
                                <li>서비스 제공을 위한 시스템 운영 및 유지보수</li>
                                <li>결제 처리</li>
                                <li>마케팅 및 광고 활동</li>
                            </ul>

                            <p>1.2. 회사는 개인정보 처리 위탁 시, 안전하고 신뢰성 있는 외부 업체를 선정하고 위탁 계약을 체결하여 개인정보 보호를 최대한 확보합니다.</p>

                            <p>1.3. 개인정보 처리 위탁을 받는 외부 업체가 개인정보를 처리하는 동안에도 개인정보 보호 관련 법령 및 회사의 개인정보 처리방침을 준수하여야 합니다.</p>

                            <p>2. 개인정보 처리 위탁의 변경</p>
                            <p>2.1. 개인정보 처리 위탁 업체 목록은 변경될 수 있으며, 변경 사항은 개인정보 처리방침을 통해 공지합니다.</p>
                        </div>
                    </li>
                </ul>
                <input type="hidden" name="ok" id="ok" value="ok">
                <button type="submit" class="button">확인</button>

            </form>
        </div>
    </div>

</body>

<script type="text/javascript">

window.addEventListener("load", function () {


    let chk1 = document.querySelector("#termsAgreement")
    let chk2 = document.querySelector("#privacyAgreement")
    let chk3 = document.querySelector("#promotionsAgreement")
    let btn = document.querySelector(".button")

    btn.addEventListener("mousedown", function (event) {
        btn.style.backgroundColor = 'rgba(174, 223, 189, 0.988)';
    })

    btn.addEventListener("mouseup", function (event) {
        btn.style.backgroundColor = 'rgb(218, 241, 225)';
    })

    btn.addEventListener("mouseout", function (event) {
        btn.style.backgroundColor = 'rgb(218, 241, 225)';
    })

})

</script>
</html>