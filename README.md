# Тестовое задание Full-stack QA

##  Описание

Проект содержит артефакты по трём направлениям тестирования:

- **API (Petstore Swagger)** — тест-план, тест-кейсы, отчёты, автотесты в Postman/Newman.
- **UI Automation Practice** — чек-листы, тест-кейсы и отчёты для ручного тестирования пользовательских сценариев.
- **UI Buggy JustTestIt** — баг-репорты, матрица приоритетов, резюме рисков и рекомендации по качеству.

Все артефакты оформлены в Markdown и текстовых файлах. Структура папок соответствует заданиям.

---

##  Требования

Для запуска автотестов необходимы:

- [Docker](https://www.docker.com/)
- [Make](https://www.gnu.org/software/make/)

Проверка установки:

```bash
docker -v
make -v
``` 
##  Запуск автотестов API

1. Клонируйте репозиторий и перейдите в директорию:

```bash
git clone <repo-url>
cd /Users/viktoriapahomova/IdeaProjects/test
```

Запустите автотесты API (Postman коллекция через Newman в Docker):
```
make newman
```



## После выполнения тестов отчёт будет сохранён в:
```API/reports/newman-report.html```
� Просмотр отчёта:
- **macOS:**
```
open API/reports/newman-report.html
```
- **Linux:**
```
xdg-open API/reports/newman-report.html
```
- **Windows (PowerShell):**
```
start API\reports\newman-report.html
```

##  Структура проекта

```text
API/                         -> тесты и отчёты для API
├── postman_collections/    -> коллекции и окружения Postman
├── reports/                -> автогенерируемые отчёты Newman
├── TestPlan_API.txt
├── TestCases_API.md
└── TestRun_Report_API.txt

UI_AutomationPractice/      -> чек-листы и отчёты для сайта testautomationpractice
├── скриншоты/
├── Checklist_UI.txt
├── Priority.txt
└── TestRun_Report_UI.txt

UI_BuggyJustTestIt/         -> результаты багфайндинга
├── BugReports.md
├── PriorityMatrix.md
└── Risks_Recommendations.txt
```

Dockerfile                  -> окружение для запуска Newman  
Makefile                   -> команды для запуска автотестов и генерации отчётов  
README.md                  -> инструкция по проекту  

 ##  Навигация по артефактам
API: тест-план, тест-кейсы, отчёт о прогоне, Postman коллекция и автотесты (Newman)
UI Automation Practice: чек-листы, приоритезация и отчёт о прогоне
UI Buggy JustTestIt: баг-репорты (8–12), матрица приоритетов, резюме рисков и рекомендации
