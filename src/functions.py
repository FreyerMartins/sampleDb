import faker

fake = faker.Faker()

def generate_person(seed):
    person = {
        'name': fake.name(),
        'city': fake.city(),
        'state': fake.state(),
        'zip_code': fake.zipcode(),
        'country': fake.country(),
        'email': fake.email(),
        'job': fake.job(),
        'company': fake.company(),
        'ssn': fake.ssn(),
        'birthdate': fake.date_of_birth(),
        'phone_number': fake.phone_number()
    }
    return person