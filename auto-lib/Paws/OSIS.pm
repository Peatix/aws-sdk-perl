package Paws::OSIS;
  use Moose;
  sub service { 'osis' }
  sub signing_name { 'osis' }
  sub version { '2022-01-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::CreatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::DeletePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::GetPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPipelineBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::GetPipelineBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPipelineChangeProgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::GetPipelineChangeProgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelineBlueprints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::ListPipelineBlueprints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::ListPipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::StartPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::StopPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::UpdatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OSIS::ValidatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreatePipeline DeletePipeline GetPipeline GetPipelineBlueprint GetPipelineChangeProgress ListPipelineBlueprints ListPipelines ListTagsForResource StartPipeline StopPipeline TagResource UntagResource UpdatePipeline ValidatePipeline / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS - Perl Interface to AWS Amazon OpenSearch Ingestion

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('OSIS');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Use the Amazon OpenSearch Ingestion API to create and manage ingestion
pipelines. OpenSearch Ingestion is a fully managed data collector that
delivers real-time log and trace data to OpenSearch Service domains.
For more information, see Getting data into your cluster using
OpenSearch Ingestion
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ingestion.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreatePipeline

=over

=item MaxUnits => Int

=item MinUnits => Int

=item PipelineConfigurationBody => Str

=item PipelineName => Str

=item [BufferOptions => L<Paws::OSIS::BufferOptions>]

=item [EncryptionAtRestOptions => L<Paws::OSIS::EncryptionAtRestOptions>]

=item [LogPublishingOptions => L<Paws::OSIS::LogPublishingOptions>]

=item [Tags => ArrayRef[L<Paws::OSIS::Tag>]]

=item [VpcOptions => L<Paws::OSIS::VpcOptions>]


=back

Each argument is described in detail in: L<Paws::OSIS::CreatePipeline>

Returns: a L<Paws::OSIS::CreatePipelineResponse> instance

Creates an OpenSearch Ingestion pipeline. For more information, see
Creating Amazon OpenSearch Ingestion pipelines
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).


=head2 DeletePipeline

=over

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::OSIS::DeletePipeline>

Returns: a L<Paws::OSIS::DeletePipelineResponse> instance

Deletes an OpenSearch Ingestion pipeline. For more information, see
Deleting Amazon OpenSearch Ingestion pipelines
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html).


=head2 GetPipeline

=over

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::OSIS::GetPipeline>

Returns: a L<Paws::OSIS::GetPipelineResponse> instance

Retrieves information about an OpenSearch Ingestion pipeline.


=head2 GetPipelineBlueprint

=over

=item BlueprintName => Str

=item [Format => Str]


=back

Each argument is described in detail in: L<Paws::OSIS::GetPipelineBlueprint>

Returns: a L<Paws::OSIS::GetPipelineBlueprintResponse> instance

Retrieves information about a specific blueprint for OpenSearch
Ingestion. Blueprints are templates for the configuration needed for a
C<CreatePipeline> request. For more information, see Using blueprints
to create a pipeline
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).


=head2 GetPipelineChangeProgress

=over

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::OSIS::GetPipelineChangeProgress>

Returns: a L<Paws::OSIS::GetPipelineChangeProgressResponse> instance

Returns progress information for the current change happening on an
OpenSearch Ingestion pipeline. Currently, this operation only returns
information when a pipeline is being created.

For more information, see Tracking the status of pipeline creation
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#get-pipeline-progress).


=head2 ListPipelineBlueprints






Each argument is described in detail in: L<Paws::OSIS::ListPipelineBlueprints>

Returns: a L<Paws::OSIS::ListPipelineBlueprintsResponse> instance

Retrieves a list of all available blueprints for Data Prepper. For more
information, see Using blueprints to create a pipeline
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).


=head2 ListPipelines

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OSIS::ListPipelines>

Returns: a L<Paws::OSIS::ListPipelinesResponse> instance

Lists all OpenSearch Ingestion pipelines in the current Amazon Web
Services account and Region. For more information, see Viewing Amazon
OpenSearch Ingestion pipelines
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html).


=head2 ListTagsForResource

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::OSIS::ListTagsForResource>

Returns: a L<Paws::OSIS::ListTagsForResourceResponse> instance

Lists all resource tags associated with an OpenSearch Ingestion
pipeline. For more information, see Tagging Amazon OpenSearch Ingestion
pipelines
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).


=head2 StartPipeline

=over

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::OSIS::StartPipeline>

Returns: a L<Paws::OSIS::StartPipelineResponse> instance

Starts an OpenSearch Ingestion pipeline. For more information, see
Starting an OpenSearch Ingestion pipeline
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--start).


=head2 StopPipeline

=over

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::OSIS::StopPipeline>

Returns: a L<Paws::OSIS::StopPipelineResponse> instance

Stops an OpenSearch Ingestion pipeline. For more information, see
Stopping an OpenSearch Ingestion pipeline
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop).


=head2 TagResource

=over

=item Arn => Str

=item Tags => ArrayRef[L<Paws::OSIS::Tag>]


=back

Each argument is described in detail in: L<Paws::OSIS::TagResource>

Returns: a L<Paws::OSIS::TagResourceResponse> instance

Tags an OpenSearch Ingestion pipeline. For more information, see
Tagging Amazon OpenSearch Ingestion pipelines
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OSIS::UntagResource>

Returns: a L<Paws::OSIS::UntagResourceResponse> instance

Removes one or more tags from an OpenSearch Ingestion pipeline. For
more information, see Tagging Amazon OpenSearch Ingestion pipelines
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).


=head2 UpdatePipeline

=over

=item PipelineName => Str

=item [BufferOptions => L<Paws::OSIS::BufferOptions>]

=item [EncryptionAtRestOptions => L<Paws::OSIS::EncryptionAtRestOptions>]

=item [LogPublishingOptions => L<Paws::OSIS::LogPublishingOptions>]

=item [MaxUnits => Int]

=item [MinUnits => Int]

=item [PipelineConfigurationBody => Str]


=back

Each argument is described in detail in: L<Paws::OSIS::UpdatePipeline>

Returns: a L<Paws::OSIS::UpdatePipelineResponse> instance

Updates an OpenSearch Ingestion pipeline. For more information, see
Updating Amazon OpenSearch Ingestion pipelines
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html).


=head2 ValidatePipeline

=over

=item PipelineConfigurationBody => Str


=back

Each argument is described in detail in: L<Paws::OSIS::ValidatePipeline>

Returns: a L<Paws::OSIS::ValidatePipelineResponse> instance

Checks whether an OpenSearch Ingestion pipeline configuration is valid
prior to creation. For more information, see Creating Amazon OpenSearch
Ingestion pipelines
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

