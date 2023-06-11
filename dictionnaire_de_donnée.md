#### Table `t_activity`

| Colonne        | Type         | Contraintes                |
| -------------- | ------------ | -------------------------- |
| activity_id    | int          | NOT NULL, AUTO_INCREMENT   |
| name_activity  | varchar(30)  | NOT NULL                   |

- Clé primaire : `activity_id`
- Contrainte unique : `name_activity`

#### Table `t_weather`

| Colonne        | Type         | Contraintes                |
| -------------- | ------------ | -------------------------- |
| weather_id    | int          | NOT NULL, AUTO_INCREMENT   |
| name_weather  | varchar(30)  | NOT NULL                   |

- Clé primaire : `weather_id`
- Contrainte unique : `name_weather`


#### Table `t_environ`

| Colonne        | Type         | Contraintes                |
| -------------- | ------------ | -------------------------- |
| environ_id     | int          | NOT NULL, AUTO_INCREMENT   |
| name_environ   | varchar(30)  | NOT NULL                   |

- Clé primaire : `environ_id`
- Contrainte unique : `name_environ`

#### Table `t_temperature`

| Colonne   | Type         | Contraintes                |
|-----------| ------------ | -------------------------- |
| temp_id   | int          | NOT NULL, AUTO_INCREMENT   |
| temp_name | varchar(30)  | NOT NULL                   |

- Clé primaire : `temp_id`
- Contrainte unique : `temp_name`

#### Table `t_season`

| Colonne   | Type         | Contraintes                |
|-----------| ------------ | -------------------------- |
| season_id | int          | NOT NULL, AUTO_INCREMENT   |
| season_name | varchar(30)  | NOT NULL                   |

- Clé primaire : `season_id`
- Contrainte unique : `season_name`


#### Table `t_activity_weather`

| Colonne             | Type         | Contraintes                      |
|---------------------| ------------ |----------------------------------|
| activity_weather_id | int          | NOT NULL, AUTO_INCREMENT         |
| fk_weather          | int          | NOT NULL, référence `t_weather`  |
| fk_activity         | int          | NOT NULL, référence `t_activity` |

- Clé primaire : `activity_weather_id`
- Clé étrangère : `fk_weather` (référence la table `t_weather`)
- Clé étrangère : `fk_activity` (référence la table `t_activity`)

#### Table `t_activity_environ`

| Colonne             | Type         | Contraintes                       |
| ------------------- | ------------ | --------------------------------- |
| activity_environ_id | int          | NOT NULL, AUTO_INCREMENT         |
| fk_environ          | int          | NOT NULL, référence `t_environ`   |
| fk_activity         | int          | NOT NULL, référence `t_activity`  |

- Clé primaire : `activity_environ_id`
- Clé étrangère : `fk_environ` (référence la table `t_environ`)
- Clé étrangère : `fk_activity` (référence la table `t_activity`)

#### Table `t_activity_season`

| Colonne            | Type         | Contraintes                      |
|--------------------| ------------ |----------------------------------|
| activity_season_id | int          | NOT NULL, AUTO_INCREMENT         |
| fk_season          | int          | NOT NULL, référence `t_season`   |
| fk_activity        | int          | NOT NULL, référence `t_activity` |

- Clé primaire : `activity_season_id`
- Clé étrangère : `fk_season` (référence la table `t_season`)
- Clé étrangère : `fk_activity` (référence la table `t_activity`)

#### Table `t_activity_temperature`

| Colonne          | Type         | Contraintes                      |
|------------------| ------------ |----------------------------------|
| activity_temp_id | int          | NOT NULL, AUTO_INCREMENT         |
| fk_temp          | int          | NOT NULL, référence `t_temp`     |
| fk_activity      | int          | NOT NULL, référence `t_activity` |

- Clé primaire : `activity_temp_id`
- Clé étrangère : `fk_temp` (référence la table `t_temp`)
- Clé étrangère : `fk_activity` (référence la table `t_activity`)

