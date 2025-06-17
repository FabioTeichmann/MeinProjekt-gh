flowchart TD
    A[Start] --> B[Set result = 1]
    B --> C[i = 1 to x]
    C --> D{Ist i gerade?}
    D -- Ja --> E[result += i]
    D -- Nein --> F[result *= i]
    E --> G{result > 1000?}
    F --> G
    G -- Ja --> H[result -= 100]
    G -- Nein --> I[weiter]
    H --> I
    I --> J{i <= x?}
    J -- Ja --> D
    J -- Nein --> K[return result]
flowchart TD
    A[Start] --> B[Set state = 0]
    B --> C[i = 0 to len-1]
    C --> D{arr[i] < 0?}
    D -- Ja --> E[state = -1]
    D -- Nein --> F{arr[i] == 0?}
    F -- Ja --> G[state = 0]
    F -- Nein --> H[state = 1]
    E --> I{state == 1?}
    G --> I
    H --> I
    I -- Ja --> J[break]
    I -- Nein --> C
    J --> K{state == 1?}
    K -- Ja --> L[return true]
    K -- Nein --> M[return false]
