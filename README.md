Full-stack QA Test Assignment
🚀 Быстрый старт
Установите Docker Desktop.
Проверить установку:
docker --version
Клонируйте проект и откройте его:
git clone <ссылка-на-репозиторий>
cd test
Через терминал, в открытой папке проекта, запустите автотесты API (Petstore, Postman + Newman):
make newman
В консоли появится CLI-отчёт.
HTML-отчёт сохранится в API/reports/newman-report.html.
Чтобы открыть отчёт:
open API/reports/newman-report.html   # macOS  
xdg-open API/reports/newman-report.html  # Linux  
start API\reports\newman-report.html     # Windows  
📂 Навигация по проекту
API/
postman_collections/ — коллекция и окружение Postman.
reports/ — HTML и CLI отчёты (автотесты через Newman).
TestPlan_API.txt — тест-план для API.
TestCases_API.md — тест-кейсы.
TestRun_Report_API.txt — отчёт о ручном прогоне.
UI_AutomationPractice/
CheckList_UI.txt — чек-лист для 2–3 ключевых сценариев (формы, алерты, drag&drop).
Priority.txt — приоритезация тестов.
TestRun_Report_UI.txt — отчёт о прогоне с артефактами (скриншоты в папке скриншоты/).
UI_BuggyJustTestIt/
BugReports.md — баг-репорты (8–12 штук, единый формат).
PriorityMatrix.md — матрица приоритетов.
Risks_Recommendations.txt — резюме рисков и рекомендации по качеству.
Dockerfile, Makefile — для запуска автотестов API в изолированной среде.
📌 Примечания
Автотесты реализованы для API через Postman + Newman (Docker).
UI-тестирование выполнено вручную, оформлены чек-листы, баг-репорты и отчёты.
Репозиторий самодостаточен: для воспроизведения достаточно Docker и make.