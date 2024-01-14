<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.mantine-1uni1zy {
    padding: 0px 1.375rem;
    appearance: none;
    text-align: left;
    text-decoration: none;
    box-sizing: border-box;
    height: 2.625rem;
    font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
    -webkit-tap-highlight-color: transparent;
    display: inline-block;
    width: auto;
    font-weight: 600;
    position: relative;
    line-height: 1;
    font-size: 1rem;
    user-select: none;
    cursor: pointer;
    margin-right: 1rem;
    color: rgb(0, 0, 0);
    background-color: rgb(255, 255, 255);
    border: 1px solid rgb(206, 212, 218);
    border-radius: 8px;
    float:right;
}

.mantine-1276sa2 {
    padding: 0px 1.375rem;
    appearance: none;
    text-align: left;
    text-decoration: none;
    box-sizing: border-box;
    height: 2.625rem;
    font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
    -webkit-tap-highlight-color: transparent;
    display: inline-block;
    width: auto;
    font-weight: 600;
    position: relative;
    line-height: 1;
    font-size: 1rem;
    user-select: none;
    cursor: pointer;
    border: 0.0625rem solid transparent;
    color: rgb(255, 255, 255);
    background-color: rgb(255, 140, 0);
    border-radius: 8px;
    float:right;
}

.mantine-goibal {
	resize: none;
	border-width: 0px;
	background-color: transparent;
	margin-bottom: 16px;
	width: 100%;
	font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
		Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo",
		"Noto Sans KR", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji",
		"Segoe UI Symbol", sans-serif !important;
	font-size:27px;
	height: 42px !important;
	font-weight:700;
}
.mantine-Input-input::placeholder{
	color:#ADB5BD !important;
}

.css-11g30v6{
	margin: auto;
	width:50%;
}
.studyPostContent{
	min-height:446px;
	width:100%;
	resize: none;
	border-width: 0px;
}

.studyPostContent::placeholder{
	color:#ADB5BD !important;
	font-weight:700;
}

</style>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<div class="css-11g30v6" style="">
		<form action="studyPostWriteOK.do" method="post">
		<hr style="border:solid 0px; background-color:black;">
			<div
				class="mantine-InputWrapper-root mantine-Textarea-root mantine-1y7fzyr">
				<div
					class="mantine-Input-wrapper mantine-Textarea-wrapper mantine-1v7s5f8">
					<textarea
						class="mantine-Input-input mantine-Textarea-input mantine-goibal"
						id="title" name="title" aria-label="title"
						placeholder="제목을 입력해주세요." aria-invalid="false"
						style="height: 39px;"></textarea>
				</div>
			</div>
		<hr style="border:solid 0px; background-color:black; margin-top:3px">
			<div class="css-140imd4">
				<ul class="css-5kov97">
					<input aria-label="tag" placeholder="자격증 입력" name="tag"
						class="css-1ryum8s">
				</ul>
			</div>
			<br>
			<div class="css-1utzp2z">
				<div class="editor-container"
					style="display: flex; flex-direction: column; height: 100%; max-height: 100%; min-height: 480px; border-radius: 8px;">
					<div data-testid="editor-content-container"
						class="editor-content-container markdown-body"
						style="background-color: rgb(255, 255, 255); cursor: auto;">
							<textarea class="studyPostContent" placeholder="글 내용을 적어주세요."></textarea><%-- 스터디 글 내용 적어놓을 곳 --%>
					</div>
				</div>
			</div>
			<br>
			<div class="css-os36di">
			<button
					class="mantine-UnstyledButton-root mantine-Button-root mantine-1276sa2"
					type="submit" data-button="true">
					<div class="mantine-1yjkc96 mantine-Button-inner">
						<span class="mantine-1ryt1ht mantine-Button-label">등록</span>
					</div>
				</button>
				
				<button
					class="mantine-UnstyledButton-root mantine-Button-root mantine-1uni1zy"
					type="button" data-button="true">
					<div class="mantine-1yjkc96 mantine-Button-inner">
						<span class="mantine-1ryt1ht mantine-Button-label">취소</span>
					</div>
				</button>
				
			</div>
		</form>
	</div>
</body>
</html>