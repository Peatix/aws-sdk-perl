
package Paws::CloudTrail::ListImports;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
  has ImportStatus => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::ListImportsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListImports - Arguments for method ListImports on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImports on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method ListImports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImports.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $ListImportsResponse = $cloudtrail->ListImports(
      Destination  => 'MyEventDataStoreArn',    # OPTIONAL
      ImportStatus => 'INITIALIZING',           # OPTIONAL
      MaxResults   => 1,                        # OPTIONAL
      NextToken    => 'MyPaginationToken',      # OPTIONAL
    );

    # Results:
    my $Imports   = $ListImportsResponse->Imports;
    my $NextToken = $ListImportsResponse->NextToken;

    # Returns a L<Paws::CloudTrail::ListImportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/ListImports>

=head1 ATTRIBUTES


=head2 Destination => Str

The ARN of the destination event data store.



=head2 ImportStatus => Str

The status of the import.

Valid values are: C<"INITIALIZING">, C<"IN_PROGRESS">, C<"FAILED">, C<"STOPPED">, C<"COMPLETED">

=head2 MaxResults => Int

The maximum number of imports to display on a single page.



=head2 NextToken => Str

A token you can use to get the next page of import results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImports in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

