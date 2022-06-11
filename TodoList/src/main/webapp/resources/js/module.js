/* string Date객체로 변환 */
const conversionDateFormat = function(date) {
		let prsDate = new Date(date.substr(0,10));
		return prsDate;
} 

/* 시작날짜,끝날짜 사이 일수 계산 */
const calcBetweenDay = function(stDate, enDate) {
	
	if(enDate.getTime() < stDate.getTime()) {
		enDate = stDate;
	}
	
	let betweenDayCalc = enDate.getTime() - stDate.getTime();
	let elapsedDay = betweenDayCalc / 1000 / 60 / 60 / 24;
	return elapsedDay;
	
}

/* 완료된 목록 카운트 */
class completeCount {
	constructor() {
		
	}
	completeChecker(list) {
		let count = 0;
		
		list.forEach(function(ele, idx){
			if(ele == 100) {
				count++;
			}			
		})
		return count;
	}
}



export { conversionDateFormat, calcBetweenDay, completeCount}

