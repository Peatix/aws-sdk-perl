package Paws::Pipes;
  use Moose;
  sub service { 'pipes' }
  sub signing_name { 'pipes' }
  sub version { '2015-10-07' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreatePipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::CreatePipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::DeletePipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::DescribePipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::ListPipes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::StartPipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopPipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::StopPipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pipes::UpdatePipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllPipes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPipes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Pipes }, @{ $next_result->Pipes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Pipes') foreach (@{ $result->Pipes });
        $result = $self->ListPipes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Pipes') foreach (@{ $result->Pipes });
    }

    return undef
  }


  sub operations { qw/CreatePipe DeletePipe DescribePipe ListPipes ListTagsForResource StartPipe StopPipe TagResource UntagResource UpdatePipe / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes - Perl Interface to AWS Amazon EventBridge Pipes

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Pipes');
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

Amazon EventBridge Pipes connects event sources to targets. Pipes
reduces the need for specialized knowledge and integration code when
developing event driven architectures. This helps ensures consistency
across your companyE<rsquo>s applications. With Pipes, the target can
be any available EventBridge target. To set up a pipe, you select the
event source, add optional event filtering, define optional enrichment,
and select the target for the event data.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07>


=head1 METHODS

=head2 CreatePipe

=over

=item Name => Str

=item RoleArn => Str

=item Source => Str

=item Target => Str

=item [Description => Str]

=item [DesiredState => Str]

=item [Enrichment => Str]

=item [EnrichmentParameters => L<Paws::Pipes::PipeEnrichmentParameters>]

=item [KmsKeyIdentifier => Str]

=item [LogConfiguration => L<Paws::Pipes::PipeLogConfigurationParameters>]

=item [SourceParameters => L<Paws::Pipes::PipeSourceParameters>]

=item [Tags => L<Paws::Pipes::TagMap>]

=item [TargetParameters => L<Paws::Pipes::PipeTargetParameters>]


=back

Each argument is described in detail in: L<Paws::Pipes::CreatePipe>

Returns: a L<Paws::Pipes::CreatePipeResponse> instance

Create a pipe. Amazon EventBridge Pipes connect event sources to
targets and reduces the need for specialized knowledge and integration
code.


=head2 DeletePipe

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Pipes::DeletePipe>

Returns: a L<Paws::Pipes::DeletePipeResponse> instance

Delete an existing pipe. For more information about pipes, see Amazon
EventBridge Pipes
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
in the Amazon EventBridge User Guide.


=head2 DescribePipe

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Pipes::DescribePipe>

Returns: a L<Paws::Pipes::DescribePipeResponse> instance

Get the information about an existing pipe. For more information about
pipes, see Amazon EventBridge Pipes
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
in the Amazon EventBridge User Guide.


=head2 ListPipes

=over

=item [CurrentState => Str]

=item [DesiredState => Str]

=item [Limit => Int]

=item [NamePrefix => Str]

=item [NextToken => Str]

=item [SourcePrefix => Str]

=item [TargetPrefix => Str]


=back

Each argument is described in detail in: L<Paws::Pipes::ListPipes>

Returns: a L<Paws::Pipes::ListPipesResponse> instance

Get the pipes associated with this account. For more information about
pipes, see Amazon EventBridge Pipes
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
in the Amazon EventBridge User Guide.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Pipes::ListTagsForResource>

Returns: a L<Paws::Pipes::ListTagsForResourceResponse> instance

Displays the tags associated with a pipe.


=head2 StartPipe

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Pipes::StartPipe>

Returns: a L<Paws::Pipes::StartPipeResponse> instance

Start an existing pipe.


=head2 StopPipe

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Pipes::StopPipe>

Returns: a L<Paws::Pipes::StopPipeResponse> instance

Stop an existing pipe.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Pipes::TagMap>


=back

Each argument is described in detail in: L<Paws::Pipes::TagResource>

Returns: a L<Paws::Pipes::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified pipe. Tags
can help you organize and categorize your resources. You can also use
them to scope user permissions by granting a user permission to access
or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the C<TagResource> action with a pipe that already has
tags. If you specify a new tag key, this tag is appended to the list of
tags associated with the pipe. If you specify a tag key that is already
associated with the pipe, the new tag value that you specify replaces
the previous value for that tag.

You can associate as many as 50 tags with a pipe.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Pipes::UntagResource>

Returns: a L<Paws::Pipes::UntagResourceResponse> instance

Removes one or more tags from the specified pipes.


=head2 UpdatePipe

=over

=item Name => Str

=item RoleArn => Str

=item [Description => Str]

=item [DesiredState => Str]

=item [Enrichment => Str]

=item [EnrichmentParameters => L<Paws::Pipes::PipeEnrichmentParameters>]

=item [KmsKeyIdentifier => Str]

=item [LogConfiguration => L<Paws::Pipes::PipeLogConfigurationParameters>]

=item [SourceParameters => L<Paws::Pipes::UpdatePipeSourceParameters>]

=item [Target => Str]

=item [TargetParameters => L<Paws::Pipes::PipeTargetParameters>]


=back

Each argument is described in detail in: L<Paws::Pipes::UpdatePipe>

Returns: a L<Paws::Pipes::UpdatePipeResponse> instance

Update an existing pipe. When you call C<UpdatePipe>, EventBridge only
the updates fields you have specified in the request; the rest remain
unchanged. The exception to this is if you modify any Amazon Web
Services-service specific fields in the C<SourceParameters>,
C<EnrichmentParameters>, or C<TargetParameters> objects. For example,
C<DynamoDBStreamParameters> or C<EventBridgeEventBusParameters>.
EventBridge updates the fields in these objects atomically as one and
overrides existing values. This is by design, and means that if you
don't specify an optional field in one of these C<Parameters> objects,
EventBridge sets that field to its system-default value during the
update.

For more information about pipes, see Amazon EventBridge Pipes
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
in the Amazon EventBridge User Guide.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllPipes(sub { },[CurrentState => Str, DesiredState => Str, Limit => Int, NamePrefix => Str, NextToken => Str, SourcePrefix => Str, TargetPrefix => Str])

=head2 ListAllPipes([CurrentState => Str, DesiredState => Str, Limit => Int, NamePrefix => Str, NextToken => Str, SourcePrefix => Str, TargetPrefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Pipes, passing the object as the first parameter, and the string 'Pipes' as the second parameter 

If not, it will return a a L<Paws::Pipes::ListPipesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

