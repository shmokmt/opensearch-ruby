# Licensed to Elasticsearch B.V. under one or more contributor
# license agreements. See the NOTICE file distributed with
# this work for additional information regarding copyright
# ownership. Elasticsearch B.V. licenses this file to you under
# the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

module Elasticsearch
  module XPack
    module API
      module MachineLearning
        module Actions

          # Retrieve usage information for datafeeds
          #
          # @option arguments [String] :datafeed_id The ID of the datafeeds stats to fetch
          # @option arguments [Boolean] :allow_no_datafeeds Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)
          #
          # @see http://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-datafeed-stats.html
          #
          def get_datafeed_stats(arguments={})
            valid_params = [
              :allow_no_datafeeds ]

            method = Elasticsearch::API::HTTP_GET
            path   = Elasticsearch::API::Utils.__pathify "_xpack/ml/datafeeds", arguments[:datafeed_id], "/_stats"
            params = Elasticsearch::API::Utils.__validate_and_extract_params arguments, valid_params
            body   = nil

            perform_request(method, path, params, body).body
          end
        end
      end
    end
  end
end
