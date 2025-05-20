
package Paws::BackupGateway::ListGateways;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::ListGatewaysOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::ListGateways - Arguments for method ListGateways on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGateways on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method ListGateways.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGateways.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $ListGatewaysOutput = $backup -gateway->ListGateways(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Gateways  = $ListGatewaysOutput->Gateways;
    my $NextToken = $ListGatewaysOutput->NextToken;

    # Returns a L<Paws::BackupGateway::ListGatewaysOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/ListGateways>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of gateways to list.



=head2 NextToken => Str

The next item following a partial list of returned resources. For
example, if a request is made to return C<MaxResults> number of
resources, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGateways in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

