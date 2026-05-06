package Paws::PcaConnectorScep;
  use Moose;
  sub service { 'pca-connector-scep' }
  sub signing_name { 'pca-connector-scep' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateChallenge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::CreateChallenge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::CreateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChallenge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::DeleteChallenge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::DeleteConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChallengeMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::GetChallengeMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChallengePassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::GetChallengePassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::GetConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChallengeMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::ListChallengeMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::ListConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorScep::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllChallengeMetadata {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChallengeMetadata(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListChallengeMetadata(@_, NextToken => $next_result->NextToken);
        push @{ $result->Challenges }, @{ $next_result->Challenges };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Challenges') foreach (@{ $result->Challenges });
        $result = $self->ListChallengeMetadata(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Challenges') foreach (@{ $result->Challenges });
    }

    return undef
  }
  sub ListAllConnectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConnectors(@_, NextToken => $next_result->NextToken);
        push @{ $result->Connectors }, @{ $next_result->Connectors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Connectors') foreach (@{ $result->Connectors });
        $result = $self->ListConnectors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Connectors') foreach (@{ $result->Connectors });
    }

    return undef
  }


  sub operations { qw/CreateChallenge CreateConnector DeleteChallenge DeleteConnector GetChallengeMetadata GetChallengePassword GetConnector ListChallengeMetadata ListConnectors ListTagsForResource TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep - Perl Interface to AWS Private CA Connector for SCEP

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PcaConnectorScep');
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

Connector for SCEP creates a connector between Amazon Web Services
Private CA and your SCEP-enabled clients and devices. For more
information, see Connector for SCEP
(https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep.html)
in the I<Amazon Web Services Private CA User Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateChallenge

=over

=item ConnectorArn => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::PcaConnectorScep::Tags>]


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::CreateChallenge>

Returns: a L<Paws::PcaConnectorScep::CreateChallengeResponse> instance

For general-purpose connectors. Creates a I<challenge password> for the
specified connector. The SCEP protocol uses a challenge password to
authenticate a request before issuing a certificate from a certificate
authority (CA). Your SCEP clients include the challenge password as
part of their certificate request to Connector for SCEP. To retrieve
the connector Amazon Resource Names (ARNs) for the connectors in your
account, call ListConnectors
(https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_ListConnectors.html).

To create additional challenge passwords for the connector, call
C<CreateChallenge> again. We recommend frequently rotating your
challenge passwords.


=head2 CreateConnector

=over

=item CertificateAuthorityArn => Str

=item [ClientToken => Str]

=item [MobileDeviceManagement => L<Paws::PcaConnectorScep::MobileDeviceManagement>]

=item [Tags => L<Paws::PcaConnectorScep::Tags>]


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::CreateConnector>

Returns: a L<Paws::PcaConnectorScep::CreateConnectorResponse> instance

Creates a SCEP connector. A SCEP connector links Amazon Web Services
Private Certificate Authority to your SCEP-compatible devices and
mobile device management (MDM) systems. Before you create a connector,
you must complete a set of prerequisites, including creation of a
private certificate authority (CA) to use with this connector. For more
information, see Connector for SCEP prerequisites
(https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-prerequisites.html).


=head2 DeleteChallenge

=over

=item ChallengeArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::DeleteChallenge>

Returns: nothing

Deletes the specified Challenge
(https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html).


=head2 DeleteConnector

=over

=item ConnectorArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::DeleteConnector>

Returns: nothing

Deletes the specified Connector
(https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Connector.html).
This operation also deletes any challenges associated with the
connector.


=head2 GetChallengeMetadata

=over

=item ChallengeArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::GetChallengeMetadata>

Returns: a L<Paws::PcaConnectorScep::GetChallengeMetadataResponse> instance

Retrieves the metadata for the specified Challenge
(https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html).


=head2 GetChallengePassword

=over

=item ChallengeArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::GetChallengePassword>

Returns: a L<Paws::PcaConnectorScep::GetChallengePasswordResponse> instance

Retrieves the challenge password for the specified Challenge
(https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html).


=head2 GetConnector

=over

=item ConnectorArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::GetConnector>

Returns: a L<Paws::PcaConnectorScep::GetConnectorResponse> instance

Retrieves details about the specified Connector
(https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Connector.html).
Calling this action returns important details about the connector, such
as the public SCEP URL where your clients can request certificates.


=head2 ListChallengeMetadata

=over

=item ConnectorArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::ListChallengeMetadata>

Returns: a L<Paws::PcaConnectorScep::ListChallengeMetadataResponse> instance

Retrieves the challenge metadata for the specified ARN.


=head2 ListConnectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::ListConnectors>

Returns: a L<Paws::PcaConnectorScep::ListConnectorsResponse> instance

Lists the connectors belonging to your Amazon Web Services account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::ListTagsForResource>

Returns: a L<Paws::PcaConnectorScep::ListTagsForResourceResponse> instance

Retrieves the tags associated with the specified resource. Tags are
key-value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the
tag key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource,
up to 50 tags for a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::PcaConnectorScep::Tags>


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::TagResource>

Returns: nothing

Adds one or more tags to your resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::PcaConnectorScep::UntagResource>

Returns: nothing

Removes one or more tags from your resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllChallengeMetadata(sub { },ConnectorArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllChallengeMetadata(ConnectorArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Challenges, passing the object as the first parameter, and the string 'Challenges' as the second parameter 

If not, it will return a a L<Paws::PcaConnectorScep::ListChallengeMetadataResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConnectors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConnectors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Connectors, passing the object as the first parameter, and the string 'Connectors' as the second parameter 

If not, it will return a a L<Paws::PcaConnectorScep::ListConnectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

