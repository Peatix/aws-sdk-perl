
package Paws::ResourceExplorer2::UpdateIndexType;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIndexType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateIndexType');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::UpdateIndexTypeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::UpdateIndexType - Arguments for method UpdateIndexType on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIndexType on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method UpdateIndexType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIndexType.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $UpdateIndexTypeOutput = $resource -explorer- 2->UpdateIndexType(
      Arn  => 'MyString',
      Type => 'LOCAL',

    );

    # Results:
    my $Arn           = $UpdateIndexTypeOutput->Arn;
    my $LastUpdatedAt = $UpdateIndexTypeOutput->LastUpdatedAt;
    my $State         = $UpdateIndexTypeOutput->State;
    my $Type          = $UpdateIndexTypeOutput->Type;

    # Returns a L<Paws::ResourceExplorer2::UpdateIndexTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/UpdateIndexType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the index that you want to update.



=head2 B<REQUIRED> Type => Str

The type of the index. To understand the difference between C<LOCAL>
and C<AGGREGATOR>, see Turning on cross-Region search
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
in the I<Amazon Web Services Resource Explorer User Guide>.

Valid values are: C<"LOCAL">, C<"AGGREGATOR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIndexType in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

