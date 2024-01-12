<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.ac-button.is-text {
	border: unset;
	background-color: unset;
	color: #495057;
	font-weight: 500;
}

.ac-button.is-md {
	padding: 0 12px;
	height: 40px;
	line-height: 1.43;
	font-size: 14px;
	letter-spacing: -.3px;
}

.ac-button {
	position: relative;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	border-radius: 4px;
	line-height: 1.47;
	font-weight: 500;
	cursor: pointer;
	-webkit-appearance: none;
	padding: 0 12px;
	height: 40px;
	line-height: 1.43;
	font-size: 14px;
	letter-spacing: -.3px;
	border: 1px solid;
	color: #fff;
}

.rounded-pill{
	background : #FF8C00;
}
</style>
</head>
<body>

	<br>
	<br>
	<section class="community-header" style="background: orange">
		<div class="community-header__content">
			<h2 class="community-header__title">함께 성장할 스터디를 모집해보세요</h2>
			<p class="community-header__sub-title">강의 수강에서 더 나아가 함께 스터디까지!</p>
		</div>
	</section>


	<!--몸통부분  -->
	<section class="community-body">

		<div class="community-body__content">
			<div>
				<ul class="status" >
					<li class="e-status active" data-status="">

						<button class="ac-button is-md is-text tab-button "
							style="float: left;">전체</button>
					</li>
					<li class="e-status " data-status="unrecruited">

						<button class="ac-button is-md is-text tab-button "
							style="float: left;">모집중</button>
					</li>
					<li class="e-status " data-status="recruited">

						<button class="ac-button is-md is-text tab-button "
							style="float: left;">모집완료</button>
					</li>
				</ul>
				</div>
			<div class="search-filter">
				
				<form class="search e-search" style="float:none">
					<div class="search-item" style="float:none">

						<div class="ac-input-with-item search-by-text e-search-input " style="width:90%; float:left">
							<svg width="16" height="16" viewBox="0 0 16 16"
								xmlns="http://www.w3.org/2000/svg">
								<path fill="#212529" fill-rule="evenodd" clip-rule="evenodd"
									d="M11.5 7c0 .59-.116 1.176-.343 1.722-.226.546-.557 1.042-.975 1.46-.418.418-.914.75-1.46.975-.546.226-1.131.343-1.722.343-.59 0-1.176-.117-1.722-.343-.546-.226-1.042-.557-1.46-.975-.418-.418-.75-.914-.975-1.46C2.616 8.176 2.5 7.591 2.5 7c0-1.194.474-2.338 1.318-3.182C4.662 2.974 5.807 2.5 7 2.5c1.193 0 2.338.474 3.182 1.318C11.026 4.662 11.5 5.806 11.5 7zm-.82 4.74c-1.206.936-2.723 1.377-4.242 1.234-1.52-.143-2.928-.86-3.937-2.005C1.49 9.825.956 8.34 1.004 6.813c.047-1.526.675-2.976 1.754-4.055 1.08-1.08 2.53-1.707 4.055-1.755 1.525-.047 3.012.488 4.156 1.498 1.145 1.01 1.862 2.417 2.005 3.937.143 1.52-.298 3.036-1.234 4.242l3.04 3.04c.074.069.133.151.174.243.04.092.063.192.065.292.001.101-.017.201-.055.294-.038.094-.094.179-.165.25-.071.071-.156.127-.25.165-.093.038-.193.056-.293.054-.101-.001-.2-.023-.293-.064-.091-.041-.174-.1-.243-.174l-3.04-3.04z"></path></svg>
							<input value="" data-kv="s" type="text" spellcheck="false"
								placeholder="관심 스터디를 검색해보세요!" enterkeyhint="search">

						</div>&nbsp;
						<button
							class="ac-button is-md is-solid search-form__search e-search-posts"
							style="min-width: 96px; background:#FF8C00">검색</button>
					</div>
					<br>
				</form>
			</div>
			<div class="question-list-container">
				<div class="posts-container-header">
					<!--sort 셀렉터(템플릿 이중 관리)-->


					<div class="ac-dropdown--text order-mb e-sel-order " style="float:left" >
						<select>
							<option value="recent" selected="">최신순</option>
							<option value="score">정확도순</option>
							<option value="comment">댓글많은순</option>
							<option value="recommend">좋아요순</option>
						</select>
					</div>
					<div class="posts-container-header__button-cover"></div>
					<a
						class="ac-button is-outlined is-gray posts-container-header__button features__guide"
						href="https://bit.ly/3dMlj4Y" target="_blank"> <span
						class="infd-icon"><svg width="16"
								xmlns="http://www.w3.org/2000/svg" height="16"
								viewBox="0 0 16 16">
								<path fill="#495057" fill-rule="evenodd"
									d="M8 1.5C4.41 1.5 1.5 4.41 1.5 8s2.91 6.5 6.5 6.5 6.5-2.91 6.5-6.5S11.59 1.5 8 1.5zM0 8c0-4.418 3.582-8 8-8s8 3.582 8 8-3.582 8-8 8-8-3.582-8-8zm9 3c0 .552-.448 1-1 1s-1-.448-1-1 .448-1 1-1 1 .448 1 1zM6.92 6.085c.081-.16.19-.299.34-.398.145-.097.371-.187.74-.187.28 0 .553.087.738.225.164.123.262.285.262.525 0 .177-.04.264-.077.318-.046.068-.124.144-.277.245-.076.051-.158.1-.258.161l-.007.004c-.093.056-.204.122-.313.195-.222.148-.487.354-.692.661-.23.345-.137.81.208 1.04.345.23.81.137 1.04-.208.045-.068.124-.143.276-.245.077-.051.159-.1.26-.16l.006-.004c.093-.057.204-.123.313-.195.222-.149.487-.355.692-.662.214-.32.329-.702.329-1.15 0-.76-.36-1.348-.863-1.725C9.155 4.163 8.554 4 8 4c-.631 0-1.155.16-1.572.438-.413.276-.68.638-.849.977-.185.37-.035.82.336 1.006.37.185.82.035 1.006-.336z"
									clip-rule="evenodd"></path></svg></span> <span
						class="posts-container-header__button-text">스터디 가이드</span>
					</a>

					<button
						class="ac-button is-md is-solid is-gray posts-container-header__button features__new-question e-new-question ">
						<span class="infd-icon"><svg width="16" height="16"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
								<path fill="#ffffff" fill-rule="evenodd"
									d="M11.508 1.451c.456-.455 1.195-.455 1.65 0l1.724 1.724c.456.456.456 1.194 0 1.65L13.02 6.687l-.008.008-7.219 6.89c-.132.126-.291.22-.466.273l-3.681 1.12c-.177.054-.369.006-.5-.124-.13-.131-.178-.323-.124-.5l1.115-3.666c.059-.192.166-.365.311-.504L9.651 3.31l1.857-1.858zM9.992 4.366l-6.854 6.542c-.02.02-.036.044-.044.072l-.843 2.769 2.785-.848c.025-.007.048-.02.067-.039l6.848-6.537-1.96-1.96zm2.675 1.26l1.508-1.508c.065-.065.065-.17 0-.236l-1.724-1.724c-.065-.065-.17-.065-.236 0l-1.508 1.509 1.96 1.96z"
									clip-rule="evenodd"></path></svg></span> <span
							class="posts-container-header__button-text">글쓰기</span>
					</button>
				</div>
				<ul class="question-list">
					<li class="question-container"><a class="e-click-post"
						href="/studies/1136817/삼성역-코엑스-웹개발-모각코" >

							<div class="question">
								<div class="question__info">
									<div class="question__title">
										<div class="title-sub__text">

											<div
												class="bootstrap-components question__status-tag question__status-tag--unrecruited" >

												<span class="badge rounded-pill"> 모집중 </span>

											</div>

										</div>
										<h3 class="title__text">
											삼성역, 코엑스 웹개발 모각코 <span class="infd-icon title__icon">

											</span>
										</h3>
									</div>
									<p class="question__body">[개발 스터디 모집 내용 예시]스터디 주제 : 삼성역,
										코엑스 웹개발 모각코스터디 목표 : 퇴근 후 모여 자기전까지 모각코&nbsp;예상 스터디 일정(횟수) : 일단
										화,수로 시작예상 커리큘럼 간략히 :예상 모집인원 : 6스터디 소개와 개설 이유스터디 관련 주의사항 :스터디에
										지원할 수 있는 방법을 남겨주세요. (이메일, 카카오 오픈채팅방, 구글폼 등.)댓글 남겨주시고 오픈채팅방
										들어오시면 됩니다.https://open.kakao.com/o/gpr1kZ0f&nbsp;비번 0001</p>

									<div class="question__info-footer">
										<div class="question__info-detail">
											<span class="question__info-user-name">지은</span> <span>&nbsp;·&nbsp;</span>
											<span>10시간 전</span>


										</div>
										<div class="question__info-userData">
											<dl>
												<dt class="visually-hidden">좋아요</dt>
												<dd class="comment__count">
													<i class="fa-regular fa-heart"></i> <span class="text">0</span>
												</dd>
												<dt class="visually-hidden">조회수</dt>
												<dd class="view__count">
													<i class="fa-regular fa-eye"></i> <span class="text">72</span>
												</dd>
												<dt class="visually-hidden">댓글</dt>
												<dd class="comment__count">
													<i class="fa-regular fa-comment"></i> <span class="text">0</span>
												</dd>
											</dl>
										</div>
									</div>
								</div>
							</div>
					</a></li>
					<li class="question-container"><a class="e-click-post"
						href="/studies/1136723/온라인-코딩테스트-스터디-모집합니다-java">

							<div class="question">
								<div class="question__info">
									<div class="question__title">
										<div class="title-sub__text">

											<div
												class="bootstrap-components question__status-tag question__status-tag--unrecruited">

												<span class="badge rounded-pill"> 모집중 </span>

											</div>


										</div>
										<h3 class="title__text">
											온라인 코딩테스트 스터디 모집합니다. (JAVA) <span
												class="infd-icon title__icon"> </span>
										</h3>
									</div>
									<p class="question__body">[개발 스터디 모집 내용 예시]스터디 주제 : 온라인
										코딩테스트 스터디&nbsp;예상 스터디 일정(횟수) : 주 1-2회&nbsp;예상 커리큘럼: &nbsp;인프런
										하루코딩님의 강의 알고리즘 코딩테스트 문제풀이 with JAVA - 입문편1를 한 주제씩 각자 시청하고 그
										주제에 맞는 문제를 몇 개 선정한 후 서로 풀이한 내용을 공유 및 토론하는 방식으로 진행할
										예정입니다.&nbsp;예상 모집인원 : 5~6명&nbsp;스터디에 지원할 수 있는 방법을 남겨주세요. (이메일,
										카카오 오픈채팅방, 구글폼 등.) : https://open.kakao.com/o/sQce0a3f</p>

									<div class="question__info-footer">
										<div class="question__info-detail">
											<span class="question__info-user-name">yeonjaery</span> <span>&nbsp;·&nbsp;</span>
											<span>11시간 전</span>


										</div>
										<div class="question__info-userData">
											<dl>
												<dt class="visually-hidden">좋아요</dt>
												<dd class="comment__count">
													<i class="fa-regular fa-heart"></i> <span class="text">0</span>
												</dd>
												<dt class="visually-hidden">조회수</dt>
												<dd class="view__count">
													<i class="fa-regular fa-eye"></i> <span class="text">89</span>
												</dd>
												<dt class="visually-hidden">댓글</dt>
												<dd class="comment__count">
													<i class="fa-regular fa-comment"></i> <span class="text">0</span>
												</dd>
											</dl>
										</div>
									</div>
								</div>
							</div>
					</a></li>
					<li class="question-container"><a class="e-click-post"
						href="/studies/1136409/일산-주말-모각코-오프라인">

							<div class="question">
								<div class="question__info">
									<div class="question__title">
										<div class="title-sub__text">

											<div
												class="bootstrap-components question__status-tag question__status-tag--unrecruited">

												<span class="badge rounded-pill"> 모집중 </span>

											</div>


										</div>
										<h3 class="title__text">
											일산 주말 모각코(오프라인) <span class="infd-icon title__icon"> </span>
										</h3>
									</div>
									<p class="question__body">안녕하세요 주말 오후에 카페에 같이 모여서개발 관련 공부하실
										분들 모집합니다~각자 하고 싶은 공부 + 개발 관련 정보 공유 하면 좋을거 같아요 ㅎ장소는 정발산역 근처 카페가
										될 것 같습니당대학생, 취준생, 직장인 분들 모두 환영입니다!부담없이 오실 수 있는 일산러분들
										환영입니다~궁금하신 사항은 오픈카톡으로 질문주세요~https://open.kakao.com/o/gDl5282f
									</p>

									<div class="question__info-footer">
										<div class="question__info-detail">
											<span class="question__info-user-name">Ubik</span> <span>&nbsp;·&nbsp;</span>
											<span>13시간 전</span>


										</div>
										<div class="question__info-userData">
											<dl>
												<dt class="visually-hidden">좋아요</dt>
												<dd class="comment__count">
													<i class="fa-regular fa-heart"></i> <span class="text">0</span>
												</dd>
												<dt class="visually-hidden">조회수</dt>
												<dd class="view__count">
													<i class="fa-regular fa-eye"></i> <span class="text">40</span>
												</dd>
												<dt class="visually-hidden">댓글</dt>
												<dd class="comment__count">
													<i class="fa-regular fa-comment"></i> <span class="text">0</span>
												</dd>
											</dl>
										</div>
									</div>
								</div>
							</div>
					</a></li>
				</ul>
			</div>
			<br>
			<nav class="pagination is-centered is-small" role="navagation"
				aria-label="pagination">

				<a class="pagination-next" href="?page=2&amp;order=recent">다음
					페이지</a>
				<ul class="pagination-list">

					<li><a class="pagination-link"
						href="?page=1&amp;order=recent" aria-label="1 페이지로 이동">1</a></li>


					<li><a class="pagination-link "
						href="?page=2&amp;order=recent" aria-label="2 페이지로 이동">2</a></li>


					<li><a class="pagination-link "
						href="?page=3&amp;order=recent" aria-label="3 페이지로 이동">3</a></li>


					<li><a class="pagination-link "
						href="?page=4&amp;order=recent" aria-label="4 페이지로 이동">4</a></li>


					<li><a class="pagination-link "
						href="?page=5&amp;order=recent" aria-label="5 페이지로 이동">5</a></li>


					<li><a class="pagination-link "
						href="?page=6&amp;order=recent" aria-label="6 페이지로 이동">6</a></li>


					<li><a class="pagination-link "
						href="?page=7&amp;order=recent" aria-label="7 페이지로 이동">7</a></li>


					<li><a class="pagination-link "
						href="?page=8&amp;order=recent" aria-label="8 페이지로 이동">8</a></li>


					<li><a class="pagination-link "
						href="?page=9&amp;order=recent" aria-label="9 페이지로 이동">9</a></li>

					<li><a class="pagination-link "
						href="?page=10&amp;order=recent" aria-label="10 페이지로 이동">10</a></li>
					<li><a class="pagination-link "
						href="?page=11&amp;order=recent" aria-label="다음 페이지 모음으로 이동">…</a></li>
				</ul>
			</nav>
		</div>
	</section>
</body>
</html>