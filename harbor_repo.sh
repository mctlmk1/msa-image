curl -u admin:Harbor12345 -k http://3.37.105.130:30002/api/v2.0/projects -XPOST --data-binary "{\"project_name\": \"paastacp\", \"public\": false}" -H "Content-Type: application/json" -i

